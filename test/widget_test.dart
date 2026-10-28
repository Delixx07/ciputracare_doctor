import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'helpers.dart';

void main() {
  setUp(rootBundle.clear);

  testWidgets('Aplikasi terbangun dan mulai di layar masuk', (tester) async {
    await pumpApp(tester);
    expect(find.text('Selamat datang'), findsOneWidget);
  });
}
