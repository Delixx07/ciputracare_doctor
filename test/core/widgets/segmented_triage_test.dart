import 'package:ciputracare_doctor/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers.dart';

void main() {
  group('SegmentedTabs', () {
    testWidgets('label + angka, ketukan memanggil onChanged', (tester) async {
      int? dipilih;
      await pumpThemed(
        tester,
        SegmentedTabs(
          segmen: const [(label: 'Pasien saya', count: 3), (label: 'Semua IGD', count: 4)],
          selected: 0,
          onChanged: (i) => dipilih = i,
        ),
      );
      expect(find.text('Pasien saya'), findsOneWidget);
      expect(find.text('3'), findsOneWidget);
      expect(find.bySemanticsLabel('Semua IGD, 4'), findsOneWidget);
      await tester.tap(find.text('Semua IGD'));
      expect(dipilih, 1);
    });

    testWidgets('tanpa angka, tinggi minimal 44', (tester) async {
      await pumpThemed(
        tester,
        SegmentedTabs(
          segmen: const [(label: 'Lab', count: null), (label: 'Radiologi', count: null)],
          selected: 1,
          onChanged: (_) {},
        ),
      );
      expect(tester.getSize(find.text('Lab').first).height, lessThan(44));
      expect(tester.getSize(find.byType(InkWell).first).height, greaterThanOrEqualTo(44));
    });
  });

  group('TriageTile', () {
    test('warna: 1 merah, 2–3 kuning, 4–5 hijau', () {
      expect(triageTone(1), ChipTone.danger);
      expect(triageTone(2), ChipTone.warn);
      expect(triageTone(3), ChipTone.warn);
      expect(triageTone(4), ChipTone.success);
      expect(triageTone(5), ChipTone.success);
    });

    testWidgets('menampilkan level dan label aksesibilitas', (tester) async {
      await pumpThemed(tester, const TriageTile(level: 2));
      expect(find.text('2'), findsOneWidget);
      expect(find.bySemanticsLabel('Triage level 2'), findsOneWidget);
    });
  });
}
