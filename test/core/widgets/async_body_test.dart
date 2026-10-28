import 'package:ciputracare_doctor/core/theme/app_theme.dart';
import 'package:ciputracare_doctor/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  setUpAll(() => initializeDateFormatting('id_ID'));

  var gagal = false;
  var dipanggil = 0;
  final angkaProvider = FutureProvider<int>((ref) async {
    dipanggil++;
    if (gagal) throw Exception('offline');
    return dipanggil;
  });

  Future<WidgetRef> pasang(WidgetTester tester) async {
    late WidgetRef refLuar;
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          theme: buildAppTheme(),
          home: Scaffold(
            body: Consumer(
              builder: (context, ref, _) {
                refLuar = ref;
                return AsyncBody(
                  value: ref.watch(angkaProvider),
                  judulGalat: 'Gagal memuat angka',
                  onRetry: () => ref.invalidate(angkaProvider),
                  builder: (n, _) => Text('Nilai $n'),
                );
              },
            ),
          ),
        ),
      ),
    );
    return refLuar;
  }

  setUp(() {
    gagal = false;
    dipanggil = 0;
  });

  testWidgets('memuat → data', (tester) async {
    await pasang(tester);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    await tester.pumpAndSettle();
    tester.takeException();
    expect(find.text('Nilai 1'), findsOneWidget);
    expect(find.byType(OfflineBanner), findsNothing);
  });

  testWidgets('gagal tanpa data → keadaan kosong + Coba lagi', (tester) async {
    gagal = true;
    await pasang(tester);
    await tester.pumpAndSettle();
    tester.takeException();
    expect(find.text('Gagal memuat angka'), findsOneWidget);
    gagal = false;
    await tester.tap(find.text('Coba lagi'));
    await tester.pumpAndSettle();
    expect(find.text('Nilai 2'), findsOneWidget);
  });

  testWidgets('gagal saat refresh → data terakhir tetap + banner offline', (tester) async {
    final ref = await pasang(tester);
    await tester.pumpAndSettle();
    tester.takeException();
    gagal = true;
    ref.invalidate(angkaProvider);
    await tester.pumpAndSettle();
    expect(find.text('Nilai 1'), findsOneWidget);
    expect(find.byType(OfflineBanner), findsOneWidget);
    expect(find.textContaining('Offline · data diperbarui'), findsOneWidget);
  });
}
