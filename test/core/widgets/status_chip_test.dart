import 'package:ciputracare_doctor/core/theme/app_colors.dart';
import 'package:ciputracare_doctor/core/widgets/status_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers.dart';

BoxDecoration _decoration(WidgetTester tester) =>
    tester.widget<Container>(find.descendant(of: find.byType(StatusChip), matching: find.byType(Container))).decoration!
        as BoxDecoration;

void main() {
  testWidgets('nada lembut: latar soft, teks berwarna, ikon tampil', (tester) async {
    await pumpThemed(tester, const StatusChip('Terverifikasi', tone: ChipTone.success, icon: Icons.check));
    expect(_decoration(tester).color, AppColors.terang.successSoft);
    expect(tester.widget<Text>(find.text('Terverifikasi')).style?.color, AppColors.terang.success);
    expect(find.byIcon(Icons.check), findsOneWidget);
  });

  testWidgets('filled: latar penuh, teks putih', (tester) async {
    await pumpThemed(tester, const StatusChip('Kritis', tone: ChipTone.danger, filled: true));
    expect(_decoration(tester).color, AppColors.terang.danger);
    expect(tester.widget<Text>(find.text('Kritis')).style?.color, AppColors.terang.onDanger);
  });

  testWidgets('default netral tanpa ikon', (tester) async {
    await pumpThemed(tester, const StatusChip('EWS 2'));
    expect(_decoration(tester).color, AppColors.terang.surfaceSunken);
    expect(find.byType(Icon), findsNothing);
  });
}
