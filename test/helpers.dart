import 'package:ciputracare_doctor/app/router.dart';
import 'package:ciputracare_doctor/app/routes.dart';
import 'package:ciputracare_doctor/core/theme/app_theme.dart';
import 'package:ciputracare_doctor/data/local/biometrik_service.dart';
import 'package:ciputracare_doctor/data/local/key_value_store.dart';
import 'package:ciputracare_doctor/data/models/dokter.dart';
import 'package:ciputracare_doctor/data/providers.dart';
import 'package:ciputracare_doctor/features/auth/auth_controller.dart';
import 'package:ciputracare_doctor/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

/// Pasang [child] di dalam MaterialApp bertema aplikasi.
Future<void> pumpThemed(WidgetTester tester, Widget child) async {
  await tester.pumpWidget(
    MaterialApp(
      theme: buildAppTheme(),
      home: Scaffold(body: SingleChildScrollView(child: child)),
    ),
  );
  // Font Google tidak tersedia offline saat test; galat pemuatannya diabaikan.
  tester.takeException();
}

/// Warna teks pada span pertama yang memuat [text].
Color? spanColor(WidgetTester tester, String text) {
  for (final rich in tester.widgetList<RichText>(find.byType(RichText))) {
    Color? found;
    rich.text.visitChildren((span) {
      if (span is TextSpan && span.text == text) {
        found = span.style?.color;
        return false;
      }
      return true;
    });
    if (found != null) return found;
  }
  return null;
}

/// Biometrik palsu untuk test.
class FakeBiometrik implements BiometrikService {
  FakeBiometrik({this.ada = false, this.hasil = true});

  bool ada;
  bool hasil;
  int dipanggil = 0;

  @override
  Future<bool> tersedia() async => ada;

  @override
  Future<bool> verifikasi(String alasan) async {
    dipanggil++;
    // Dialog biometrik asli butuh waktu.
    await Future<void>.delayed(const Duration(milliseconds: 800));
    return hasil;
  }
}

/// Data mock dibaca dari asset secara async; beri waktu nyata lalu selesaikan animasi.
Future<void> settle(WidgetTester tester) async {
  for (var i = 0; i < 5; i++) {
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 20)));
    await tester.pump();
  }
  await tester.pumpAndSettle();
  // Font Google tidak tersedia offline saat test.
  tester.takeException();
}

/// Pasang aplikasi lengkap (router + sesi) dengan penyimpanan & biometrik palsu.
Future<ProviderContainer> pumpApp(
  WidgetTester tester, {
  String initial = Routes.beranda,
  AuthState auth = const AuthState(),
  KeyValueStore? store,
  BiometrikService? biometrik,
}) async {
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        routerProvider.overrideWith((ref) => buildRouter(ref, initialLocation: initial)),
        authControllerProvider.overrideWith(() => AuthController(auth)),
        keyValueStoreProvider.overrideWithValue(store ?? MemoryKeyValueStore()),
        biometrikServiceProvider.overrideWithValue(biometrik ?? FakeBiometrik()),
      ],
      child: const CiputraCareApp(),
    ),
  );
  await settle(tester);
  return ProviderScope.containerOf(tester.element(find.byType(CiputraCareApp)));
}

const dokterContoh = Dokter(nama: 'dr. Andreas Wijaya', kode: 'D0412', unit: 'IGD');

const sesiMasuk = AuthState(status: AuthStatus.masuk, dokter: dokterContoh);
