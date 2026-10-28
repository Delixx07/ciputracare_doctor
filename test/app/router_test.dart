import 'package:ciputracare_doctor/app/router.dart';
import 'package:ciputracare_doctor/app/routes.dart';
import 'package:ciputracare_doctor/features/auth/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:ciputracare_doctor/app/app_shell.dart';

import '../helpers.dart';

const noRegHendra = 'EMR/20261028/00002';

void main() {
  setUpAll(() => initializeDateFormatting('id_ID'));
  // rootBundle meng-cache Future pemuatan asset; Future dari test sebelumnya tidak selesai di test berikutnya.
  setUp(rootBundle.clear);

  test('alamat pasien meng-encode "/" di No. registrasi', () {
    expect(Routes.pasien(noRegHendra), '/pasien/EMR%2F20261028%2F00002');
    expect(Routes.pasien(noRegHendra, tab: PasienTab.lab), '/pasien/EMR%2F20261028%2F00002?tab=lab');
  });

  group('authRedirect', () {
    const keluar = AuthState();
    const terkunci = AuthState(status: AuthStatus.terkunci, punyaPin: true);
    const masuk = AuthState(status: AuthStatus.masuk);
    const perluPin = AuthState(status: AuthStatus.masuk, perluBuatPin: true);

    test('belum masuk → /login', () {
      expect(authRedirect(keluar, Routes.beranda), Routes.login);
      expect(authRedirect(keluar, Routes.pin), Routes.login);
      expect(authRedirect(keluar, Routes.login), isNull);
    });

    test('terkunci → /pin, tapi /login tetap boleh', () {
      expect(authRedirect(terkunci, Routes.igd), Routes.pin);
      expect(authRedirect(terkunci, Routes.pin), isNull);
      expect(authRedirect(terkunci, Routes.login), isNull);
    });

    test('masuk: layar masuk → Beranda; halaman lain bebas', () {
      expect(authRedirect(masuk, Routes.login), Routes.beranda);
      expect(authRedirect(masuk, Routes.pin), Routes.beranda);
      expect(authRedirect(masuk, Routes.lab), isNull);
    });

    test('masuk tapi perlu buat PIN → /pin/buat', () {
      expect(authRedirect(perluPin, Routes.beranda), Routes.pinBuat);
      expect(authRedirect(perluPin, Routes.pinBuat), isNull);
    });
  });

  testWidgets('belum masuk: halaman apa pun diarahkan ke layar masuk', (tester) async {
    await pumpApp(tester, initial: Routes.igd);
    expect(find.text('Selamat datang'), findsOneWidget);
    expect(find.byType(AppTabBar), findsNothing);
  });

  testWidgets('pindah tab dan lonceng membuka notifikasi (badge 4)', (tester) async {
    await pumpApp(tester, auth: sesiMasuk);
    expect(find.byType(AppTabBar), findsOneWidget);

    await tester.tap(find.text('Lab'));
    await settle(tester);
    expect(find.text('Hasil lab masuk'), findsOneWidget);

    await tester.tap(find.text('Profil'));
    await settle(tester);
    expect(find.text('Keamanan dan pemberitahuan'), findsOneWidget);

    expect(find.text('4'), findsOneWidget);
    await tester.tap(find.byTooltip('Notifikasi, 4 belum dibaca'));
    await settle(tester);
    expect(find.text('4 belum dibaca'), findsOneWidget);
    expect(find.byType(AppTabBar), findsNothing);
  });

  testWidgets('IGD → halaman pasien dengan 4 tab, tanpa tab bar', (tester) async {
    await pumpApp(tester, auth: sesiMasuk, initial: Routes.igd);
    await tester.tap(find.text('Hendra Kusuma'));
    await settle(tester);

    expect(find.byType(AppTabBar), findsNothing);
    expect(find.text('Hendra Kusuma'), findsOneWidget);
    for (final t in PasienTab.values) {
      expect(find.widgetWithText(Tab, t.label), findsOneWidget);
    }
    expect(find.text('Kelengkapan kajian'), findsOneWidget);
  });

  testWidgets('?tab=lab membuka tab Hasil lab', (tester) async {
    await pumpApp(
      tester,
      auth: sesiMasuk,
      initial: Routes.pasien(noRegHendra, tab: PasienTab.lab),
    );
    expect(find.text('Order hari ini'), findsOneWidget);
  });

  testWidgets('pasien tanpa rekam fiktif → keadaan kosong', (tester) async {
    await pumpApp(tester, auth: sesiMasuk, initial: Routes.pasien('EMR/20261028/00001'));
    expect(find.text('Data pasien belum tersedia'), findsOneWidget);
  });
}
