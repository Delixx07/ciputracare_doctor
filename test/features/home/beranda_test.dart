import 'package:ciputracare_doctor/data/local/key_value_store.dart';
import 'package:ciputracare_doctor/data/models/beranda.dart';
import 'package:ciputracare_doctor/data/models/dokter.dart';
import 'package:ciputracare_doctor/data/providers.dart';
import 'package:ciputracare_doctor/data/repositories/beranda_repository.dart';
import 'package:ciputracare_doctor/features/home/beranda_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../../helpers.dart';

void main() {
  setUpAll(() => initializeDateFormatting('id_ID'));
  setUp(rootBundle.clear);

  group('teks header', () {
    const dokter = Dokter(nama: 'dr. Andreas Wijaya', kode: 'D0412', unit: 'IGD', shift: 'Pagi 07–14');

    test('sapaan mengikuti jam, nama depan saja', () {
      expect(judulSapaan(DateTime(2026, 10, 28, 7), dokter), 'Selamat pagi, dr. Andreas');
      expect(judulSapaan(DateTime(2026, 10, 28, 13), dokter), 'Selamat siang, dr. Andreas');
      expect(judulSapaan(DateTime(2026, 10, 28, 16), dokter), 'Selamat sore, dr. Andreas');
      expect(judulSapaan(DateTime(2026, 10, 28, 22), dokter), 'Selamat malam, dr. Andreas');
      expect(judulSapaan(DateTime(2026, 10, 28, 7), null), 'Selamat pagi');
    });

    test('subjudul hari, tanggal, dan shift', () {
      expect(subjudulShift(DateTime(2026, 10, 28), dokter), 'Rabu, 28 Okt · Shift pagi 07–14');
    });
  });

  test('ringkasan mock: angka, urutan perhatian, serah terima', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    final c = ProviderContainer();
    addTearDown(c.dispose);
    final r = await c.read(berandaRepositoryProvider).getRingkasan();

    expect(r.pasienSaya, 3);
    expect(r.pasienIgd, 4);
    expect(r.labSelesai, 2);
    expect(r.labDiproses, 2);
    expect(r.perhatian.map((p) => p.jenis), [
      JenisPerhatian.nilaiKritis,
      JenisPerhatian.kajianBelumDiisi,
      JenisPerhatian.cpptBelumDiverifikasi,
    ]);
    expect(r.perhatian.first.keterangan, 'Bed 2 · GDS 452 mg/dL');
    expect(r.perhatian[1].keterangan, 'Kevin Hartono · Bed 3 · triage 2');
    expect(r.perhatian[2].keterangan, 'Hendra Kusuma · Ns. Rudi Hartanto · 07:30');
    expect(r.serahTerima?.dari, 'dr. Yohanes (shift malam)');
    expect(r.serahTerima?.isi, startsWith('2 pasien menunggu hasil lab'));
  });

  testWidgets('Beranda menampilkan perhatian, angka, serah terima; tanpa tombol aksi', (tester) async {
    await pumpApp(tester, auth: sesiMasuk);

    expect(find.text('Perlu perhatian'), findsOneWidget);
    expect(find.text('Perlu tindakan'), findsNothing);
    expect(find.text('Nilai kritis · Hendra Kusuma'), findsOneWidget);
    expect(find.text('Kajian dokter belum diisi'), findsOneWidget);
    expect(find.text('Catatan belum diverifikasi'), findsOneWidget);
    expect(find.text('dari 4 pasien di IGD'), findsOneWidget);
    expect(find.text('2 masih diproses'), findsOneWidget);
    await tester.scrollUntilVisible(find.text('Serah terima · dr. Yohanes (shift malam)'), 200);
    expect(find.text('Serah terima · dr. Yohanes (shift malam)'), findsOneWidget);
    expect(find.byType(FilledButton), findsNothing);
  });

  testWidgets('nilai kritis membuka pasien di tab Hasil lab', (tester) async {
    await pumpApp(tester, auth: sesiMasuk);
    await tester.tap(find.text('Nilai kritis · Hendra Kusuma'));
    await settle(tester);
    expect(find.text('Order hari ini'), findsOneWidget);
  });

  testWidgets('kartu "Pasien IGD saya" membuka tab IGD', (tester) async {
    await pumpApp(tester, auth: sesiMasuk);
    await tester.tap(find.text('Pasien IGD saya'));
    await settle(tester);
    expect(find.text('Pasien IGD'), findsOneWidget);
  });

  testWidgets('galat memuat → keadaan kosong dengan Coba lagi', (tester) async {
    final repo = _RepoGagal();
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          berandaRepositoryProvider.overrideWithValue(repo),
          keyValueStoreProvider.overrideWithValue(MemoryKeyValueStore()),
        ],
        child: const MaterialApp(home: BerandaPage()),
      ),
    );
    await settle(tester);
    expect(find.text('Gagal memuat beranda'), findsOneWidget);
    await tester.tap(find.text('Coba lagi'));
    await settle(tester);
    expect(repo.dipanggil, 2);
  });
}

class _RepoGagal implements BerandaRepository {
  int dipanggil = 0;

  @override
  Future<RingkasanBeranda> getRingkasan() async {
    dipanggil++;
    throw Exception('jaringan');
  }
}
