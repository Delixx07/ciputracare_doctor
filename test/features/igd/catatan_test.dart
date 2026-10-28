import 'package:ciputracare_doctor/app/routes.dart';
import 'package:ciputracare_doctor/data/models/cppt.dart';
import 'package:ciputracare_doctor/features/igd/catatan/catatan_tab.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../../helpers.dart';

const noReg = 'EMR/20261028/00002';

Cppt _c(String ppa) => Cppt(ppa: ppa, waktu: '-', status: 'Terverifikasi', s: '', o: '', a: '', p: '');

void main() {
  setUpAll(() => initializeDateFormatting('id_ID'));
  setUp(rootBundle.clear);

  void layarPonsel(WidgetTester tester) {
    tester.view.physicalSize = const Size(400, 1400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
  }

  test('jenis PPA dari nama/peran', () {
    expect(JenisPpa.dari(_c('dr. Andreas Wijaya · Dokter IGD')), JenisPpa.dokter);
    expect(JenisPpa.dari(_c('Ns. Rudi Hartanto · Perawat')), JenisPpa.perawat);
    expect(JenisPpa.dari(_c('Sari · Ahli gizi')), JenisPpa.lainnya);
  });

  testWidgets('daftar CPPT: status verifikasi ditampilkan, SOAP lengkap, tanpa tombol tulis', (tester) async {
    layarPonsel(tester);
    await pumpApp(
      tester,
      auth: sesiMasuk,
      initial: Routes.pasien(noReg, tab: PasienTab.catatan),
    );

    expect(find.text('2 catatan · 1 belum diverifikasi'), findsOneWidget);
    expect(find.byType(KartuCppt), findsNWidgets(2));
    expect(find.text('Terverifikasi'), findsOneWidget);
    expect(find.text('Belum diverifikasi'), findsOneWidget);
    expect(find.text('Masih BAB cair 2× sejak datang, mual berkurang.'), findsOneWidget);
    expect(find.text('Lapor dokter jaga, pasang IV line, ambil sampel lab.'), findsOneWidget);
    expect(find.textContaining('Verifikasi catatan'), findsNothing);
    expect(find.textContaining('+ Catatan'), findsNothing);
    expect(find.text('Lainnya · 0'), findsNothing);
  });

  testWidgets('filter Perawat / Dokter / Semua', (tester) async {
    layarPonsel(tester);
    await pumpApp(
      tester,
      auth: sesiMasuk,
      initial: Routes.pasien(noReg, tab: PasienTab.catatan),
    );

    await tester.tap(find.text('Perawat · 1'));
    await settle(tester);
    expect(find.byType(KartuCppt), findsOneWidget);
    expect(find.text('Ns. Rudi Hartanto · Perawat'), findsOneWidget);

    await tester.tap(find.text('Dokter · 1'));
    await settle(tester);
    expect(find.text('dr. Andreas Wijaya · Dokter IGD'), findsOneWidget);
    expect(find.text('Ns. Rudi Hartanto · Perawat'), findsNothing);

    await tester.tap(find.text('Semua PPA · 2'));
    await settle(tester);
    expect(find.byType(KartuCppt), findsNWidgets(2));
  });
}
