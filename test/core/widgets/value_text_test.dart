import 'package:ciputracare_doctor/core/theme/app_colors.dart';
import 'package:ciputracare_doctor/core/widgets/value_text.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers.dart';

void main() {
  testWidgets('nilai normal hitam tanpa panah', (tester) async {
    await pumpThemed(tester, const ValueText('100'));
    expect(spanColor(tester, '100'), AppColors.ink);
    expect(find.textContaining('▲'), findsNothing);
    expect(find.textContaining('▼'), findsNothing);
  });

  testWidgets('nilai tinggi merah dengan ▲', (tester) async {
    await pumpThemed(tester, const ValueText('156/86', status: ValueStatus.tinggi));
    expect(spanColor(tester, '156/86'), AppColors.danger);
    expect(find.text('156/86 ▲', findRichText: true), findsOneWidget);
    expect(find.bySemanticsLabel('156/86 Tinggi'), findsOneWidget);
  });

  testWidgets('nilai rendah dengan satuan dan ▼', (tester) async {
    await pumpThemed(tester, const ValueText('3,1', unit: 'mmol/L', status: ValueStatus.rendah));
    expect(find.text('3,1 mmol/L ▼', findRichText: true), findsOneWidget);
  });

  testWidgets('showArrow false menyembunyikan panah, warna tetap', (tester) async {
    await pumpThemed(tester, const ValueText('48', status: ValueStatus.tinggi, showArrow: false));
    expect(find.text('48', findRichText: true), findsOneWidget);
    expect(spanColor(tester, '48'), AppColors.danger);
  });
}
