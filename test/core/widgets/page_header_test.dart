import 'package:ciputracare_doctor/core/widgets/page_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers.dart';

void main() {
  testWidgets('judul, subjudul, label, badge, dan lonceng bisa diketuk', (tester) async {
    var dibuka = false;
    await pumpThemed(
      tester,
      PageHeader(
        title: 'Pasien IGD',
        subtitle: 'Rabu, 28 Okt · dr. Andreas Wijaya',
        label: 'Emergency Unit',
        badgeCount: 4,
        onNotifikasi: () => dibuka = true,
      ),
    );
    expect(find.text('Pasien IGD'), findsOneWidget);
    expect(find.text('Rabu, 28 Okt · dr. Andreas Wijaya'), findsOneWidget);
    expect(find.text('Emergency Unit'), findsOneWidget);
    expect(find.text('4'), findsOneWidget);
    expect(find.bySemanticsLabel('Notifikasi, 4 belum dibaca'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.notifications_none));
    expect(dibuka, isTrue);
  });

  testWidgets('badge disingkat 9+ dan hilang bila 0', (tester) async {
    await pumpThemed(tester, PageHeader(title: 'Beranda', badgeCount: 12, onNotifikasi: () {}));
    expect(find.text('9+'), findsOneWidget);

    await pumpThemed(tester, PageHeader(title: 'Beranda', onNotifikasi: () {}));
    expect(find.text('0'), findsNothing);
    expect(find.byIcon(Icons.notifications_none), findsOneWidget);
  });

  testWidgets('tanpa onNotifikasi, lonceng tidak tampil', (tester) async {
    await pumpThemed(tester, const PageHeader(title: 'Profil'));
    expect(find.byIcon(Icons.notifications_none), findsNothing);
  });
}
