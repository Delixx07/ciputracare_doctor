import 'package:ciputracare_doctor/core/theme/app_colors.dart';
import 'package:ciputracare_doctor/core/theme/app_text.dart';
import 'package:ciputracare_doctor/core/theme/app_theme.dart';
import 'package:ciputracare_doctor/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers.dart';

void main() {
  test('tema terang & gelap memakai palet masing-masing', () {
    final terang = buildAppTheme();
    final gelap = buildAppTheme(gelap: true);
    expect(terang.brightness, Brightness.light);
    expect(gelap.brightness, Brightness.dark);
    expect(terang.extension<AppColors>(), AppColors.terang);
    expect(gelap.extension<AppColors>(), AppColors.gelap);
    expect(gelap.scaffoldBackgroundColor, AppColors.gelap.surface);
  });

  test('palet gelap: teks terang di atas latar gelap; arti warna tetap', () {
    const g = AppColors.gelap;
    expect(g.ink.computeLuminance(), greaterThan(g.surfaceRaised.computeLuminance()));
    // Kontras teks utama & sekunder ≥ 4.5:1 terhadap kartu.
    double kontras(Color a, Color b) {
      final la = a.computeLuminance(), lb = b.computeLuminance();
      return (la > lb ? la + 0.05 : lb + 0.05) / (la > lb ? lb + 0.05 : la + 0.05);
    }

    for (final warna in [g.ink, g.inkMuted, g.danger, g.amber, g.success, g.brand]) {
      expect(kontras(warna, g.surfaceRaised), greaterThanOrEqualTo(4.5), reason: '$warna');
    }
    // Header & tab bar tetap gelap di kedua mode.
    expect(g.chrome.computeLuminance(), lessThan(0.1));
    expect(AppText.dari(g).caption.color, g.inkMuted);
  });

  testWidgets('widget mengikuti palet tema (mode gelap)', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: buildAppTheme(gelap: true),
        home: const Scaffold(body: ValueText('156/86', status: ValueStatus.tinggi)),
      ),
    );
    tester.takeException();
    expect(spanColor(tester, '156/86'), AppColors.gelap.danger);
  });
}
