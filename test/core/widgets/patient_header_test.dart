import 'package:ciputracare_doctor/core/format/vital.dart';
import 'package:ciputracare_doctor/core/theme/app_colors.dart';
import 'package:ciputracare_doctor/core/widgets/widgets.dart';
import 'package:ciputracare_doctor/data/models/header_pasien.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers.dart';

const _header = HeaderPasien(
  noReg: 'EMR/20261028/00002',
  noRm: '00-03-17-42',
  nama: 'Hendra Kusuma',
  umur: '36 th',
  jk: 'L',
  bed: 'Bed 2',
  datang: '07:12',
  penjamin: 'Asuransi swasta (Admedika)',
  alergi: 'Alergi obat · nama tidak diingat',
  triage: 'Triage 3',
  ews: 2,
  vital: VitalTerakhir(
    jam: '07:20',
    nilai: {
      'GCS': '15',
      'TD': '156/86',
      'HR': '100',
      'RR': '20',
      'Suhu': '36,0',
      'SpO2': '96',
      'Nyeri': '7/10',
      'BMI': '28,1',
    },
    abnormal: ['TD', 'Nyeri'],
  ),
);

void main() {
  group('statusVital', () {
    test('normal bila tidak ditandai abnormal', () {
      expect(statusVital('TD', '200/120', abnormal: false), ValueStatus.normal);
    });

    test('arah dari batas dewasa', () {
      expect(statusVital('TD', '156/86', abnormal: true), ValueStatus.tinggi);
      expect(statusVital('TD', '82/50', abnormal: true), ValueStatus.rendah);
      expect(statusVital('Nyeri', '7/10', abnormal: true), ValueStatus.tinggi);
      expect(statusVital('SpO2', '88', abnormal: true), ValueStatus.rendah);
      expect(statusVital('Suhu', '38,6', abnormal: true), ValueStatus.tinggi);
      expect(statusVital('GCS', '9', abnormal: true), ValueStatus.rendah);
    });

    test('arah tak pasti → abnormal tanpa panah', () {
      expect(statusVital('HR', '80', abnormal: true), ValueStatus.abnormal);
      expect(statusVital('Lainnya', 'x', abnormal: true), ValueStatus.abnormal);
      expect(ValueStatus.abnormal.arrow, isNull);
    });

    test('label SpO2 → SpO₂', () => expect(labelVital('SpO2'), 'SpO₂'));
  });

  testWidgets('ringkas: alergi, triage, EWS, hanya vital abnormal', (tester) async {
    await pumpThemed(tester, const PatientHeader(header: _header));
    expect(find.text('Alergi obat · nama tidak diingat'), findsOneWidget);
    expect(find.text('Triage 3'), findsOneWidget);
    expect(find.text('EWS 2'), findsOneWidget);
    expect(find.text('Vital 07:20'), findsOneWidget);
    expect(find.text('TD 156/86 ▲ · Nyeri 7/10 ▲', findRichText: true), findsOneWidget);
    expect(spanColor(tester, 'TD 156/86 ▲'), AppColors.terang.danger);
    expect(find.text('Detail'), findsOneWidget);
    expect(find.text('GCS'), findsNothing);
  });

  testWidgets('Detail membuka 8 vital + datang/penjamin; Tutup menutup', (tester) async {
    await pumpThemed(tester, const PatientHeader(header: _header));
    await tester.tap(find.text('Detail'));
    await tester.pumpAndSettle();

    for (final label in ['GCS', 'TD', 'HR', 'RR', 'Suhu', 'SpO₂', 'Nyeri', 'BMI']) {
      expect(find.text(label), findsOneWidget, reason: label);
    }
    expect(spanColor(tester, '100'), AppColors.terang.ink);
    expect(spanColor(tester, '156/86'), AppColors.terang.danger);
    expect(find.text('Datang 07:12 · Asuransi swasta (Admedika)'), findsOneWidget);

    await tester.tap(find.text('Tutup'));
    await tester.pumpAndSettle();
    expect(find.text('GCS'), findsNothing);
  });

  testWidgets('tanpa alergi → chip netral; EWS tinggi → merah', (tester) async {
    await pumpThemed(tester, PatientHeader(header: _header.copyWith(alergi: null, ews: 7)));
    expect(find.text('Tidak ada alergi tercatat'), findsOneWidget);
    final ews = tester.widget<StatusChip>(find.widgetWithText(StatusChip, 'EWS 7'));
    expect(ews.tone, ChipTone.danger);
  });
}
