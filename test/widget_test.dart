import 'package:flutter_test/flutter_test.dart';
import 'package:facebook/main.dart';
import 'package:facebook/screens/splash_screen.dart';

void main() {
  testWidgets('FacebookUI smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const FacebookUI());

    // Verify that SplashScreen is displayed.
    expect(find.byType(SplashScreen), findsOneWidget);

    // Drain timer from SplashScreen
    await tester.pumpAndSettle(const Duration(seconds: 4));
  });
}