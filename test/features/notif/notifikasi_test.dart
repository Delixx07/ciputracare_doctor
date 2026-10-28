import 'package:ciputracare_doctor/app/routes.dart';
import 'package:ciputracare_doctor/data/local/key_value_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../../helpers.dart';

void main() {
  setUpAll(() => initializeDateFormatting('id_ID'));
  setUp(rootBundle.clear);

  void layarPonsel(WidgetTester tester) {
    tester.view.physicalSize = const Size(400, 1200);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
  }

  testWidgets('daftar, filter, buka → ditandai dibaca & buka tab pasien', (tester) async {
    layarPonsel(tester);
    final store = MemoryKeyValueStore();
    await pumpApp(tester, auth: sesiMasuk, initial: Routes.notifikasi, store: store);

    expect(find.text('4 belum dibaca'), findsOneWidget);
    expect(find.text('Nilai kritis · Hendra Kusuma'), findsOneWidget);
    expect(find.text('Sampel diterima laboratorium'), findsOneWidget);

    await tester.tap(find.widgetWithText(ChoiceChip, 'Lab'));
    await settle(tester);
    expect(find.text('Pasien baru · triage level 2'), findsNothing);
    await tester.tap(find.widgetWithText(ChoiceChip, 'Semua'));
    await settle(tester);

    await tester.tap(find.text('Nilai kritis · Hendra Kusuma'));
    await settle(tester);
    expect(find.text('Kritis: GDS 452 mg/dL'), findsOneWidget);
    expect(store.values['notif_dibaca'], contains('n1'));

    await tester.pageBack();
    await settle(tester);
    expect(find.text('3 belum dibaca'), findsOneWidget);
  });

  testWidgets('Tandai semua dibaca → 0, tersimpan lokal', (tester) async {
    final store = MemoryKeyValueStore();
    await pumpApp(tester, auth: sesiMasuk, initial: Routes.notifikasi, store: store);
    await tester.tap(find.text('Tandai semua dibaca'));
    await settle(tester);
    expect(find.text('Semua sudah dibaca'), findsOneWidget);
    expect(find.text('Tandai semua dibaca'), findsNothing);
    expect(store.values['notif_dibaca'], allOf(contains('n1'), contains('n4')));
  });

  testWidgets('status baca dibaca dari perangkat saat dibuka', (tester) async {
    final store = MemoryKeyValueStore()..values['notif_dibaca'] = '["n1","n2"]';
    await pumpApp(tester, auth: sesiMasuk, initial: Routes.notifikasi, store: store);
    expect(find.text('2 belum dibaca'), findsOneWidget);
  });
}
