import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ciputracare_doctor/data/models/models.dart';
import 'package:ciputracare_doctor/data/providers.dart';
import 'package:ciputracare_doctor/data/repositories/repository_exception.dart';

const noRegHendra = 'EMR/20261028/00002';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late ProviderContainer container;
  setUp(() => container = ProviderContainer());
  tearDown(() => container.dispose());

  test('profil dokter terbaca', () async {
    final dokter = await container.read(dokterProvider.future);
    expect(dokter.kode, 'D0412');
    expect(dokter.unit, 'IGD');
  });

  test('daftar pasien IGD dan serah terima terbaca', () async {
    final pasien = await container.read(igdRepositoryProvider).getDaftarPasien();
    expect(pasien, hasLength(4));
    expect(pasien.where((p) => p.milikSaya), hasLength(3));
    expect(pasien[1].statusTone, StatusTone.lab);
    expect(await container.read(igdRepositoryProvider).getSerahTerima(), contains('dr. Yohanes'));
  });

  test('notifikasi terbaca', () async {
    final notif = await container.read(notifikasiRepositoryProvider).getNotifikasi();
    expect(notif, hasLength(5));
    expect(notif.first.tone, NotifikasiTone.danger);
    expect(notif.where((n) => n.belumDibaca), hasLength(4));
  });

  test('header pasien: vital terpisah dari jam & abnormal', () async {
    final header = await container.read(igdRepositoryProvider).getHeader(noRegHendra);
    expect(header.nama, 'Hendra Kusuma');
    expect(header.vital.jam, '07:20');
    expect(header.vital.nilai.keys, ['GCS', 'TD', 'HR', 'RR', 'Suhu', 'SpO2', 'Nyeri', 'BMI']);
    expect(header.vital.isAbnormal('TD'), isTrue);
    expect(header.vital.isAbnormal('HR'), isFalse);
  });

  test('kajian awal 6 bagian terbaca', () async {
    final k = await container.read(igdRepositoryProvider).getKajianAwal(noRegHendra);
    expect(k.triage.level, 3);
    expect(k.anamnesa.keluhanUtama, isNotEmpty);
    expect(k.pengkajianPerawat.abcde, hasLength(5));
    expect(k.pengkajianPerawat.isAbnormal('Circulation'), isTrue);
    expect(k.riwayat.alergi.single.reaksi, 'Gatal dan bentol');
    expect(k.pemeriksaan.vital['SpO₂ %'], '96');
    expect(k.pemeriksaan.mst?.skor, 3);
    expect(k.assessment.diagnosa.first.kode, 'A09.0');
    expect(k.assessment.prosedur, hasLength(4));
    expect(k.planning.instruksi, hasLength(3));
  });

  test('CPPT dan disposisi terbaca', () async {
    final repo = container.read(igdRepositoryProvider);
    final cppt = await repo.getCppt(noRegHendra);
    expect(cppt, hasLength(2));
    expect(cppt.first.terverifikasi, isTrue);
    expect(cppt.last.terverifikasi, isFalse);
    expect(cppt.first.s, startsWith('Masih BAB cair'));
    final disposisi = await repo.getDisposisi(noRegHendra);
    expect(disposisi.status, 'Belum diproses');
  });

  test('lab pasien dan tren terbaca', () async {
    final repo = container.read(labRepositoryProvider);
    final lab = await repo.getLabPasien(noRegHendra);
    expect(lab.nilaiKritis?.statusKonfirmasi, 'Belum dikonfirmasi');
    expect(lab.order, hasLength(4));
    expect(lab.order.first.waktu, ['08:50', null, null, null]);
    expect(lab.order.last.selesai, isTrue);
    expect(lab.hasil.first.flag, LabFlag.kritis);
    expect(lab.hasil.last.diLuarRujukan, isFalse);
    expect(lab.radiologi.single.pemeriksaan, 'Foto thorax PA');

    final tren = await container.read(trenLabProvider((noReg: noRegHendra, item: 'GDS')).future);
    expect(tren?.titik.map((t) => t.nilai), [289, 452]);
    expect(await repo.getTren(noRegHendra, 'Kalium'), isNull);
  });

  test('No. registrasi tanpa rekam fiktif melempar DataTidakDitemukan', () {
    expect(container.read(igdRepositoryProvider).getHeader('EMR/20261028/00001'), throwsA(isA<DataTidakDitemukan>()));
  });
}
