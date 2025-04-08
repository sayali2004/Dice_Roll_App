import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:first_app/gradient_container.dart'; // Make sure this matches your actual package name

void main() {
  testWidgets('App renders GradientContainer', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: GradientContainer(
            color1: Color.fromARGB(255, 98, 114, 206),
            color2: Color.fromARGB(255, 92, 61, 145),
          ),
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.byType(GradientContainer), findsOneWidget);
  });
}
