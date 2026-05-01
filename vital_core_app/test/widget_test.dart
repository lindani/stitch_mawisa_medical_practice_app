import 'package:flutter_test/flutter_test.dart';
import 'package:vital_core_app/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const VitalCoreApp());
    await tester.pumpAndSettle();
    
    // Just verify the app builds without crashing.
    expect(find.byType(VitalCoreApp), findsOneWidget);
  });
}
