import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bangun_datar_getx/main.dart';

void main() {
  testWidgets('Calculate area of square', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify initial state
    expect(find.text('Area of Square: 0.0'), findsNothing);

    // Enter value for square length
    await tester.enterText(find.byType(TextField).at(0), '5');
    await tester.tap(find.text('Calculate Square'));
    await tester.pump();

    // Verify result
    expect(find.text('Area of Square: 25.0'), findsOneWidget);
  });

  testWidgets('Calculate area of rectangle', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify initial state
    expect(find.text('Area of Rectangle: 0.0'), findsNothing);

    // Enter values for rectangle length and width
    await tester.enterText(find.byType(TextField).at(0), '5'); // Length
    await tester.enterText(find.byType(TextField).at(1), '4'); // Width
    await tester.tap(find.text('Calculate Rectangle'));
    await tester.pump();

    // Verify result
    expect(find.text('Area of Rectangle: 20.0'), findsOneWidget);
  });

  testWidgets('Calculate area of circle', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify initial state
    expect(find.text('Area of Circle: 0.0'), findsNothing);

    // Enter value for circle radius
    await tester.enterText(find.byType(TextField).at(0), '3');
    await tester.tap(find.text('Calculate Circle'));
    await tester.pump();

    // Verify result
    expect(find.text('Area of Circle: 28.26'), findsOneWidget); // Approximate value with 3.14
  });

  testWidgets('Calculate area of triangle', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify initial state
    expect(find.text('Area of Triangle: 0.0'), findsNothing);

    // Enter values for triangle base and height
    await tester.enterText(find.byType(TextField).at(0), '4'); // Base
    await tester.enterText(find.byType(TextField).at(1), '6'); // Height
    await tester.tap(find.text('Calculate Triangle'));
    await tester.pump();

    // Verify result
    expect(find.text('Area of Triangle: 12.0'), findsOneWidget);
  });
}
