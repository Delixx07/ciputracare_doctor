import 'package:ciputracare_doctor/core/theme/app_colors.dart';
import 'package:ciputracare_doctor/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers.dart';

void main() {
  testWidgets('menampilkan rujukan, sebelumnya, dan label status', (tester) async {
    await pumpThemed(
      tester,
      const LabValueRow(
        item: 'Kalium',
        value: '3,1',
        unit: 'mmol/L',
        rujukan: '3,5–5,1',
        sebelumnya: '3,6',
        status: ValueStatus.rendah,
      ),
    );
    expect(find.text('Kalium'), findsOneWidget);
    expect(find.text('Rujukan 3,5–5,1 · sebelumnya 3,6'), findsOneWidget);
    expect(find.text('▼ Rendah'), findsOneWidget);
  });

  testWidgets('sebelumnya kosong ditulis –; normal tanpa label', (tester) async {
    await pumpThemed(tester, const LabValueRow(item: 'SGOT', value: '32', unit: 'U/L', rujukan: '< 40'));
    expect(find.text('Rujukan < 40 · sebelumnya –'), findsOneWidget);
    expect(find.byType(StatusChip), findsNothing);
    expect(find.textContaining('Tinggi'), findsNothing);
  });

  testWidgets('kritis: latar merah muda + chip Kritis, bisa diketuk', (tester) async {
    var tapped = false;
    await pumpThemed(
      tester,
      LabValueRow(
        item: 'GDS',
        value: '452',
        unit: 'mg/dL',
        rujukan: '70–140',
        status: ValueStatus.kritis,
        onTap: () => tapped = true,
      ),
    );
    expect(find.widgetWithText(StatusChip, 'Kritis'), findsOneWidget);
    final material = tester.widget<Material>(
      find.descendant(of: find.byType(LabValueRow), matching: find.byType(Material)).first,
    );
    expect(material.color, AppColors.dangerSoft);
    await tester.tap(find.text('GDS'));
    expect(tapped, isTrue);
  });
}
