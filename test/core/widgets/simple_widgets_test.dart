import 'package:ciputracare_doctor/core/theme/app_colors.dart';
import 'package:ciputracare_doctor/core/theme/app_spacing.dart';
import 'package:ciputracare_doctor/core/theme/app_text.dart';
import 'package:ciputracare_doctor/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../../helpers.dart';

void main() {
  setUpAll(() => initializeDateFormatting('id_ID'));

  group('SectionTitle', () {
    testWidgets('judul tebal 15 + keterangan kanan', (tester) async {
      await pumpThemed(tester, const SectionTitle('Order hari ini', trailing: '4 order'));
      expect(tester.widget<Text>(find.text('Order hari ini')).style?.fontSize, AppText.section.fontSize);
      expect(find.text('4 order'), findsOneWidget);
    });
  });

  group('InfoRow', () {
    testWidgets('label + isi; data memakai huruf mono', (tester) async {
      await pumpThemed(tester, const InfoRow(label: 'No. RM', value: '00-03-17-42', data: true));
      expect(find.text('No. RM'), findsOneWidget);
      expect(tester.widget<Text>(find.text('00-03-17-42')).style, AppText.data);
    });

    testWidgets('isi kosong ditulis –', (tester) async {
      await pumpThemed(tester, const InfoRow(label: 'Catatan', value: ''));
      expect(find.text('–'), findsOneWidget);
    });
  });

  group('EmptyState', () {
    testWidgets('tombol Coba lagi memanggil onRetry', (tester) async {
      var retry = 0;
      await pumpThemed(tester, EmptyState(title: 'Gagal memuat', message: 'Periksa koneksi.', onRetry: () => retry++));
      expect(find.text('Gagal memuat'), findsOneWidget);
      expect(find.text('Periksa koneksi.'), findsOneWidget);
      await tester.tap(find.text('Coba lagi'));
      expect(retry, 1);
    });

    testWidgets('tanpa onRetry, tanpa tombol', (tester) async {
      await pumpThemed(tester, const EmptyState(title: 'Belum ada catatan'));
      expect(find.byType(OutlinedButton), findsNothing);
    });
  });

  group('OfflineBanner', () {
    testWidgets('menampilkan jam pembaruan HH:mm', (tester) async {
      await pumpThemed(tester, OfflineBanner(diperbarui: DateTime(2026, 10, 28, 8, 5)));
      expect(find.text('Offline · data diperbarui 08:05'), findsOneWidget);
    });
  });

  group('FilterPill', () {
    testWidgets('label + angka, terpilih bergaris brand, ketukan memanggil onTap', (tester) async {
      var diketuk = 0;
      await pumpThemed(tester, FilterPill(label: 'Perawat', count: 1, selected: true, onTap: () => diketuk++));
      expect(find.text('Perawat · 1'), findsOneWidget);
      final chip = tester.widget<ChoiceChip>(find.byType(ChoiceChip));
      expect(chip.selected, isTrue);
      expect(chip.side?.color, AppColors.brand);
      await tester.tap(find.text('Perawat · 1'));
      expect(diketuk, 1);
      expect(tester.getSize(find.byType(ChoiceChip)).height, greaterThanOrEqualTo(AppSpacing.minTouch));
    });

    testWidgets('tanpa angka hanya label', (tester) async {
      await pumpThemed(tester, FilterPill(label: 'Lab', selected: false, onTap: () {}));
      expect(find.text('Lab'), findsOneWidget);
    });
  });

  group('SurfaceCard & CodeBadge', () {
    testWidgets('kartu putih bergaris tepi; bayangan opsional', (tester) async {
      await pumpThemed(tester, const SurfaceCard(bayangan: true, child: Text('isi')));
      final dekor = tester.widget<Container>(find.byType(Container).first).decoration! as BoxDecoration;
      expect(dekor.color, AppColors.surfaceRaised);
      expect(dekor.boxShadow, isNotEmpty);
      expect(find.text('isi'), findsOneWidget);
    });

    testWidgets('kode ICD memakai huruf data', (tester) async {
      await pumpThemed(tester, const CodeBadge('A09.0'));
      expect(tester.widget<Text>(find.text('A09.0')).style, AppText.data);
    });
  });
}
