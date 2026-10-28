import 'package:ciputracare_doctor/core/theme/app_spacing.dart';
import 'package:ciputracare_doctor/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers.dart';

void main() {
  testWidgets('baris dipisah garis; chevron hanya pada baris yang bisa diketuk', (tester) async {
    var tapped = 0;
    await pumpThemed(
      tester,
      ListCard(
        children: [
          ListCardItem(title: 'Nilai kritis', subtitle: 'Bed 2 · GDS 452', onTap: () => tapped++),
          const ListCardItem(title: 'Hanya info'),
          const ListCardItem(title: 'Info lain'),
        ],
      ),
    );
    expect(find.byType(Divider), findsNWidgets(2));
    expect(find.byIcon(Icons.chevron_right), findsOneWidget);
    expect(find.text('Bed 2 · GDS 452'), findsOneWidget);

    await tester.tap(find.text('Nilai kritis'));
    expect(tapped, 1);
  });

  testWidgets('tinggi baris minimal 44', (tester) async {
    await pumpThemed(tester, const ListCard(children: [ListCardItem(title: 'A')]));
    expect(tester.getSize(find.byType(ListCardItem)).height, greaterThanOrEqualTo(AppSpacing.minTouch));
  });
}
