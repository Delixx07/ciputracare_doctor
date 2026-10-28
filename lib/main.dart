import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

import 'app/kunci_sesi.dart';
import 'app/router.dart';
import 'core/theme/app_theme.dart';
import 'features/auth/auth_controller.dart';
import 'features/profile/preferensi.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Intl.defaultLocale = 'id_ID';
  await initializeDateFormatting('id_ID');

  // Baca sesi tersimpan sebelum layar pertama: perangkat diingat → PIN, selain itu → masuk.
  final container = ProviderContainer();
  await container.read(authControllerProvider.notifier).muat();

  runApp(UncontrolledProviderScope(container: container, child: const CiputraCareApp()));
}

class CiputraCareApp extends ConsumerWidget {
  const CiputraCareApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'CiputraCare Doctor',
      debugShowCheckedModeBanner: false,
      theme: buildAppTheme(),
      darkTheme: buildAppTheme(gelap: true),
      themeMode: ref.watch(temaProvider),
      routerConfig: ref.watch(routerProvider),
      builder: (context, child) => KunciSesi(child: child ?? const SizedBox()),
    );
  }
}
