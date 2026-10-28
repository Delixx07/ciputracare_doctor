import 'package:ciputracare_doctor/app/routes.dart';
import 'package:ciputracare_doctor/core/widgets/triage_tile.dart';
import 'package:ciputracare_doctor/data/models/pasien_igd.dart';
import 'package:ciputracare_doctor/features/igd/pasien_card.dart';
import 'package:ciputracare_doctor/features/igd/saring_pasien.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../../helpers.dart';

PasienIgd _p(String nama, int triage, String datang, {bool saya = true, String noRm = '00-00-00-00'}) => PasienIgd(
  noReg: 'EMR/20261028/$nama',
  noRm: noRm,
  nama: nama,
  umur: '30 th',
  jk: 'L',
  bed: 'Bed 1',
  datang: datang,
  triage: triage,
  keluhan: '-',
  status: '-',
  statusTone: StatusTone.warn,
  milikSaya: saya,
);

List<String> _nama(List<PasienIgd> l) => [for (final p in l) p.nama];

void main() {
  setUpAll(() => initializeDateFormatting('id_ID'));
  setUp(rootBundle.clear);

  /// Layar setinggi ponsel agar semua kartu dibangun.
  void layarPonsel(WidgetTester tester) {
    tester.view.physicalSize = const Size(400, 1400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
  }

  group('saringPasien', () {
    final semua = [
      _p('Dewi', 3, '07:00'),
      _p('Andi', 2, '08:10'),
      _p('Budi', 2, '06:30', saya: false, noRm: '00-03-17-42'),
      _p('Citra', 4, '05:00'),
    ];

    test('urut triage lalu jam datang', () {
      expect(_nama(saringPasien(semua, hanyaSaya: false)), ['Budi', 'Andi', 'Dewi', 'Citra']);
    });

    test('pasien saya saja', () {
      expect(_nama(saringPasien(semua, hanyaSaya: true)), ['Andi', 'Dewi', 'Citra']);
    });

    test('cari nama (huruf besar/kecil) dan No. RM tanpa tanda "-"', () {
      expect(_nama(saringPasien(semua, hanyaSaya: false, kueri: 'DEW')), ['Dewi']);
      expect(_nama(saringPasien(semua, hanyaSaya: false, kueri: '031742')), ['Budi']);
      expect(_nama(saringPasien(semua, hanyaSaya: false, kueri: '20261028/andi')), ['Andi']);
    });
  });

  testWidgets('Pasien saya default; Semua IGD menambah pasien; urut triage', (tester) async {
    layarPonsel(tester);
    await pumpApp(tester, auth: sesiMasuk, initial: Routes.igd);

    expect(find.textContaining('3 pasien · urut triage, lalu jam datang'), findsOneWidget);
    expect(find.text('Kevin Hartono'), findsNothing);
    final urutan = tester.widgetList<PasienCard>(find.byType(PasienCard)).map((c) => c.pasien.nama).toList();
    expect(urutan, ['Siti Rahmawati', 'Hendra Kusuma', 'Agus Pratama']);

    await tester.tap(find.text('Semua IGD'));
    await settle(tester);
    expect(find.textContaining('4 pasien · urut triage, lalu jam datang'), findsOneWidget);
    expect(find.text('Kevin Hartono'), findsOneWidget);
  });

  testWidgets('cari: hasil, tidak ditemukan, hapus pencarian', (tester) async {
    layarPonsel(tester);
    await pumpApp(tester, auth: sesiMasuk, initial: Routes.igd);

    await tester.enterText(find.byType(TextField), 'hendra');
    await settle(tester);
    expect(find.text('1 hasil untuk “hendra”'), findsOneWidget);
    expect(find.byType(PasienCard), findsOneWidget);

    await tester.enterText(find.byType(TextField), 'zzz');
    await settle(tester);
    expect(find.text('Pasien tidak ditemukan'), findsOneWidget);

    await tester.tap(find.byTooltip('Hapus pencarian'));
    await settle(tester);
    expect(find.byType(PasienCard), findsNWidgets(3));
  });

  testWidgets('kartu menampilkan detail dan membuka halaman pasien', (tester) async {
    layarPonsel(tester);
    await pumpApp(tester, auth: sesiMasuk, initial: Routes.igd);
    expect(find.text('36 th · L · datang 07:12'), findsOneWidget);
    expect(find.text('Nilai kritis GDS 452 · 2 order masih diproses'), findsOneWidget);
    expect(find.byWidgetPredicate((w) => w is TriageTile && w.level == 3), findsOneWidget);

    await tester.tap(find.text('Hendra Kusuma'));
    await settle(tester);
    expect(find.text('Kelengkapan kajian'), findsOneWidget);
  });
}
