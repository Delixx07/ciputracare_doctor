import 'dart:convert';
import 'dart:io';

import 'package:ciputracare_doctor/app/routes.dart';
import 'package:ciputracare_doctor/core/format/vital.dart';
import 'package:ciputracare_doctor/core/widgets/value_text.dart';
import 'package:ciputracare_doctor/data/models/kajian_awal.dart';
import 'package:ciputracare_doctor/features/igd/kajian/bagian_kajian.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../../helpers.dart';

const noReg = 'EMR/20261028/00002';

KajianAwal _kajianMock() {
  final json = jsonDecode(File('assets/mock/rekam_hendra_kusuma.json').readAsStringSync()) as Map<String, dynamic>;
  return KajianAwal.fromJson(json['kajianAwal'] as Map<String, dynamic>);
}

void main() {
  setUpAll(() => initializeDateFormatting('id_ID'));
  setUp(rootBundle.clear);

  void layarPonsel(WidgetTester tester) {
    tester.view.physicalSize = const Size(400, 1400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
  }

  group('BagianKajian', () {
    final k = _kajianMock();

    test('6 bagian, nomor 1–6, dariNomor dibatasi', () {
      expect(BagianKajian.values.map((b) => b.nomor), [1, 2, 3, 4, 5, 6]);
      expect(BagianKajian.dariNomor(2), BagianKajian.perawat);
      expect(BagianKajian.dariNomor(99), BagianKajian.planning);
      expect(BagianKajian.dariNomor(null), BagianKajian.anamnesa);
    });

    test('ringkasan tiap bagian dari data', () {
      expect(BagianKajian.anamnesa.ringkasan(k), 'BAB cair 8× sejak pagi, mual.');
      expect(BagianKajian.perawat.ringkasan(k), 'Diisi Ns. Rudi Hartanto · 07:12 · 1 abnormal');
      expect(BagianKajian.riwayat.ringkasan(k), 'RPD: Diabetes melitus · 1 obat rutin · 1 alergi');
      expect(BagianKajian.pemeriksaan.ringkasan(k), 'Tanda vital · Abdomen abnormal · MST 3');
      expect(BagianKajian.assessment.ringkasan(k), 'A09.0 Gastroenteritis akut infeksius +2');
      expect(BagianKajian.planning.ringkasan(k), '3 instruksi · 2 resep & order');
    });

    test('kelengkapan: semua lengkap; diagnosa kosong → assessment belum', () {
      expect(BagianKajian.values.every((b) => b.lengkap(k)), isTrue);
      final tanpaDiagnosa = k.copyWith(assessment: const Assessment());
      expect(BagianKajian.assessment.lengkap(tanpaDiagnosa), isFalse);
    });
  });

  test('vital pemeriksaan dibanding batas: TD sistol & nyeri tinggi, BMI tidak diwarnai', () {
    expect(statusVitalRentang('TD sistol', '156'), ValueStatus.tinggi);
    expect(statusVitalRentang('Nyeri', '7'), ValueStatus.tinggi);
    expect(statusVitalRentang('HR', '100'), ValueStatus.normal);
    expect(statusVitalRentang('SpO₂ %', '96'), ValueStatus.normal);
    expect(statusVitalRentang('BMI', '28,1'), ValueStatus.normal);
  });

  testWidgets('tab Kajian awal: triage ditampilkan, kelengkapan, 6 bagian, tanpa tombol simpan', (tester) async {
    layarPonsel(tester);
    await pumpApp(tester, auth: sesiMasuk, initial: Routes.pasien(noReg));

    expect(find.text('Triage · ATS 1–5'), findsOneWidget);
    expect(
      find.byWidgetPredicate((w) => w is Semantics && w.properties.label == 'Triage level 3, Urgen'),
      findsOneWidget,
    );
    expect(find.text('6 dari 6 bagian'), findsOneWidget);
    for (final b in BagianKajian.values) {
      expect(find.text(b.judulDaftar), findsOneWidget);
    }
    expect(find.textContaining('Simpan'), findsNothing);
    expect(find.textContaining('Order penunjang'), findsNothing);
  });

  testWidgets('buka bagian, Berikutnya/Sebelumnya, Selesai kembali', (tester) async {
    layarPonsel(tester);
    await pumpApp(tester, auth: sesiMasuk, initial: Routes.pasien(noReg));
    await tester.tap(find.text('Anamnesa'));
    await settle(tester);

    expect(find.text('Kajian awal 1/6 · Hendra Kusuma'), findsOneWidget);
    expect(find.text('Keluhan utama'), findsOneWidget);
    expect(find.text('BAB cair 8× sejak pagi, mual.'), findsOneWidget);
    expect(tester.widget<FilledButton>(find.widgetWithText(FilledButton, 'Sebelumnya')).onPressed, isNull);

    await tester.tap(find.text('Berikutnya'));
    await settle(tester);
    expect(find.text('Kajian awal 2/6 · Hendra Kusuma'), findsOneWidget);
    expect(find.text('Primary survey (ABCDE)'), findsOneWidget);
    expect(find.text('Takikardia'), findsOneWidget);

    await tester.tap(find.text('Sebelumnya'));
    await settle(tester);
    expect(find.text('Kajian awal 1/6 · Hendra Kusuma'), findsOneWidget);
  });

  testWidgets('isi bagian 3–6 dalam bentuk baca', (tester) async {
    layarPonsel(tester);
    await pumpApp(tester, auth: sesiMasuk, initial: Routes.kajian(noReg, 3));
    expect(find.text('Obat · nama tidak diingat'), findsOneWidget);
    expect(find.text('Metformin 500 mg tablet'), findsOneWidget);
    expect(find.textContaining('Tambah'), findsNothing);

    await tester.tap(find.text('Berikutnya'));
    await settle(tester);
    expect(find.text('TD sistol'), findsOneWidget);
    expect(find.text('Nyeri tekan epigastrium, bising usus meningkat'), findsOneWidget);
    expect(find.text('berisiko'), findsOneWidget);

    await tester.tap(find.text('Berikutnya'));
    await settle(tester);
    expect(find.text('A09.0'), findsOneWidget);
    expect(find.text('Pemasangan infus vena'), findsOneWidget);

    await tester.tap(find.text('Berikutnya'));
    await settle(tester);
    expect(find.text('Kajian awal 6/6 · Hendra Kusuma'), findsOneWidget);
    expect(find.text('Selesai'), findsOneWidget);
    await tester.tap(find.text('Instruksi'));
    await settle(tester);
    expect(find.text('Konsul penyakit dalam'), findsOneWidget);
    expect(find.textContaining('Kutip'), findsNothing);
  });
}
