import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:first_app/main.dart'; // ✅ Make sure this matches your actual project name

void main() {
  testWidgets('App renders GradientContainer', (WidgetTester tester) async {
    // Build and render the app
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          color1: Color.fromARGB(255, 98, 114, 206),
          color2: Color.fromARGB(255, 92, 61, 145),
        ),
      ),
    ));

    // Wait for widgets to load/render
    await tester.pumpAndSettle();

    // Check if GradientContainer exists in widget tree
    expect(find.byType(GradientContainer), findsOneWidget);
  });
}
