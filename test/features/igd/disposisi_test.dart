import 'package:ciputracare_doctor/app/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../../helpers.dart';

const noReg = 'EMR/20261028/00002';

void main() {
  setUpAll(() => initializeDateFormatting('id_ID'));
  setUp(rootBundle.clear);

  void layarPonsel(WidgetTester tester) {
    tester.view.physicalSize = const Size(400, 1400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
  }

  testWidgets('status disposisi ditampilkan; tanpa pilihan & tombol proses', (tester) async {
    layarPonsel(tester);
    await pumpApp(
      tester,
      auth: sesiMasuk,
      initial: Routes.pasien(noReg, tab: PasienTab.disposisi),
    );

    expect(find.text('Status disposisi'), findsOneWidget);
    expect(find.text('Belum diproses'), findsOneWidget);
    expect(find.text('2 pemeriksaan lab masih diproses'), findsOneWidget);
    expect(find.text('Pengantar rawat inap'), findsOneWidget);
    expect(find.text('6 West · kelas 1'), findsOneWidget);
    expect(find.text('dr. Lina Gunawan, Sp.PD'), findsOneWidget);
    expect(find.text('Admedika · aktif'), findsOneWidget);
    expect(find.text('Dehidrasi, hipokalemia, AKI'), findsOneWidget);
    expect(find.text('E87.6'), findsOneWidget);
    expect(find.text('Hipokalemia'), findsOneWidget);

    expect(find.textContaining('Proses disposisi'), findsNothing);
    expect(find.byType(ChoiceChip), findsNothing);
    expect(find.byType(FilledButton), findsNothing);
  });

  testWidgets('"Lihat" membuka tab Hasil lab', (tester) async {
    layarPonsel(tester);
    await pumpApp(
      tester,
      auth: sesiMasuk,
      initial: Routes.pasien(noReg, tab: PasienTab.disposisi),
    );
    await tester.tap(find.text('Lihat'));
    await settle(tester);
    expect(find.text('Order hari ini'), findsOneWidget);
  });
}
