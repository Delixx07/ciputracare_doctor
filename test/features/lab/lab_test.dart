import 'package:ciputracare_doctor/app/routes.dart';
import 'package:ciputracare_doctor/core/theme/app_colors.dart';
import 'package:ciputracare_doctor/core/widgets/widgets.dart';
import 'package:ciputracare_doctor/data/models/lab.dart';
import 'package:ciputracare_doctor/features/lab/lab_format.dart';
import 'package:ciputracare_doctor/features/lab/order_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../../helpers.dart';

const noReg = 'EMR/20261028/00002';

OrderLab _o(int tahap, String status, List<String?> waktu) =>
    OrderLab(noTrx: 'LAC/1', judul: 'x', tahap: tahap, waktu: waktu, status: status);

HasilLab _h(String item, LabFlag? flag) => HasilLab(item: item, nilai: '1', satuan: '-', rujukan: '-', flag: flag);

void main() {
  setUpAll(() => initializeDateFormatting('id_ID'));
  setUp(rootBundle.clear);

  void layarPonsel(WidgetTester tester) {
    tester.view.physicalSize = const Size(400, 1600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
  }

  group('format lab', () {
    test('keterangan tahap', () {
      expect(
        keteranganTahap(_o(1, 'Menunggu sampel', ['08:50', null, null, null])),
        'Dipesan 08:50 · berikutnya: sampel diambil',
      );
      expect(
        keteranganTahap(_o(3, 'Diproses', ['08:20', '08:25', '08:40', null])),
        'Diproses 08:40 · berikutnya: selesai',
      );
      expect(keteranganTahap(_o(4, '1 kritis', ['08:05', '08:12', '08:15', '08:31'])), 'Selesai 08:31');
    });

    test('warna status order', () {
      expect(warnaStatusOrder(_o(2, 'Menunggu', []), AppColors.terang), AppColors.terang.amber);
      expect(warnaStatusOrder(_o(4, '1 kritis', []), AppColors.terang), AppColors.terang.danger);
      expect(warnaStatusOrder(_o(4, '8 di luar rujukan', []), AppColors.terang), AppColors.terang.danger);
      expect(warnaStatusOrder(_o(4, 'Normal', []), AppColors.terang), AppColors.terang.success);
    });

    test('urutan hasil: kritis, di luar rujukan, normal; flag → status nilai', () {
      final urut = urutHasil([
        _h('A', null),
        _h('B', LabFlag.rendah),
        _h('C', LabFlag.kritis),
        _h('D', LabFlag.tinggi),
      ]);
      expect(urut.map((h) => h.item), ['C', 'B', 'D', 'A']);
      expect(statusDariFlag(LabFlag.rendah), ValueStatus.rendah);
      expect(statusDariFlag(null), ValueStatus.normal);
    });
  });

  testWidgets('tab Lab: hasil masuk + filter', (tester) async {
    layarPonsel(tester);
    await pumpApp(tester, auth: sesiMasuk, initial: Routes.lab);

    expect(find.text('Hasil lab masuk'), findsOneWidget);
    expect(find.text('Semua · 4'), findsOneWidget);
    expect(find.text('GDS 452 mg/dL ▲ kritis · 10 di luar rujukan'), findsOneWidget);
    expect(find.text('Semua dalam rujukan'), findsOneWidget);

    await tester.tap(find.text('Perlu perhatian · 2'));
    await settle(tester);
    expect(find.text('Semua dalam rujukan'), findsNothing);
    expect(find.text('Siti Rahmawati'), findsOneWidget);

    await tester.tap(find.text('Diproses · 1'));
    await settle(tester);
    expect(find.text('Diproses · perkiraan 09:30'), findsOneWidget);

    await tester.tap(find.text('Semua · 4'));
    await settle(tester);
    await tester.tap(find.text('GDS 452 mg/dL ▲ kritis · 10 di luar rujukan'));
    await settle(tester);
    expect(find.text('Order hari ini'), findsOneWidget);
  });

  testWidgets('tab Hasil lab pasien: banner kritis tanpa Konfirmasi, order, radiologi', (tester) async {
    layarPonsel(tester);
    await pumpApp(
      tester,
      auth: sesiMasuk,
      initial: Routes.pasien(noReg, tab: PasienTab.lab),
    );

    expect(find.text('Kritis: GDS 452 mg/dL'), findsOneWidget);
    expect(find.text('Lab 08:32 · belum dikonfirmasi'), findsOneWidget);
    expect(find.textContaining('Konfirmasi'), findsNothing);
    expect(find.byType(OrderCard), findsNWidgets(4));
    expect(find.text('CITO'), findsOneWidget);
    expect(find.text('Dipesan 08:50 · berikutnya: sampel diambil'), findsOneWidget);
    expect(find.text('11 nilai · 10 di luar rujukan'), findsOneWidget);

    await tester.tap(find.text('Radiologi'));
    await settle(tester);
    expect(find.text('Foto thorax PA'), findsOneWidget);
    await tester.tap(find.text('Lainnya'));
    await settle(tester);
    expect(find.text('Sinus takikardia 104×/mnt, tidak ada perubahan ST-T.'), findsOneWidget);
  });

  testWidgets('detail order: info, tahap, item', (tester) async {
    layarPonsel(tester);
    await pumpApp(tester, auth: sesiMasuk, initial: Routes.labOrder(noReg, 'LAC/20261028/00023'));

    expect(find.text('GDS, HbA1c'), findsOneWidget);
    expect(find.text('dr. Maria Lestari, Sp.PK'), findsOneWidget);
    expect(find.text('Item pemeriksaan · 2'), findsOneWidget);
    expect(find.widgetWithText(StatusChip, 'Kritis'), findsOneWidget);
    expect(find.text('▲ Tinggi'), findsOneWidget);
  });

  testWidgets('detail order yang belum selesai: hasil belum keluar', (tester) async {
    layarPonsel(tester);
    await pumpApp(tester, auth: sesiMasuk, initial: Routes.labOrder(noReg, 'LAC/20261028/00031'));
    expect(find.text('Hasil belum keluar'), findsOneWidget);
  });

  testWidgets('hasil hari ini: default di luar rujukan, Semua menampilkan yang normal, tanpa Kutip', (tester) async {
    layarPonsel(tester);
    await pumpApp(tester, auth: sesiMasuk, initial: Routes.labHariIni(noReg));

    expect(find.byType(LabValueRow), findsNWidgets(10));
    expect(find.text('SGOT'), findsNothing);
    expect(find.text('sampel 08:12 · validasi 08:31'), findsOneWidget);

    await tester.tap(find.text('Semua'));
    await settle(tester);
    expect(find.byType(LabValueRow), findsNWidgets(11));
    expect(find.text('SGOT'), findsOneWidget);
    expect(find.textContaining('Kutip'), findsNothing);
  });

  testWidgets('tren: grafik + tabel; parameter tanpa data → keadaan kosong; tanpa Order ulang', (tester) async {
    layarPonsel(tester);
    await pumpApp(tester, auth: sesiMasuk, initial: Routes.labTren(noReg, 'GDS'));

    expect(find.byType(LineChart), findsOneWidget);
    expect(find.text('GDS (mg/dL)'), findsOneWidget);
    expect(find.text('28 Okt 07:49'), findsWidgets);
    expect(find.text('IGD · kunjungan lalu'), findsOneWidget);
    expect(find.textContaining('Order ulang'), findsNothing);
    expect(find.textContaining('Kutip'), findsNothing);

    await tester.tap(find.widgetWithText(ChoiceChip, 'HbA1c'));
    await settle(tester);
    expect(find.text('Belum ada data tren HbA1c'), findsOneWidget);
  });
}
