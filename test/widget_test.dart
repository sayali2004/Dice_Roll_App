import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:first_app/gradient_container.dart'; // ✅ Import the widget
// Replace `first_app` with your real package name in `pubspec.yaml`

void main() {
  testWidgets('App renders GradientContainer', (WidgetTester tester) async {
    // ❌ Removed const due to non-const child widget
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          color1: Color.fromARGB(255, 98, 114, 206),
          color2: Color.fromARGB(255, 92, 61, 145),
        ),
      ),
    ));

    await tester.pumpAndSettle();

    expect(find.byType(GradientContainer), findsOneWidget);
  });
}
