import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:test_task/main.dart';

void main() {
  testWidgets('Change background color of the page test',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Hey there'), findsOneWidget);
    Color oldColor = tester
        .firstWidget(find.byType(Container))
        .toDiagnosticsNode()
        .getProperties()
        .firstWhere((element) => element.name == 'bg')
        .value;

    await tester.tap(find.byType(GestureDetector));
    await tester.pump();

    Color newColor = tester
        .firstWidget(find.byType(Container))
        .toDiagnosticsNode()
        .getProperties()
        .firstWhere((element) => element.name == 'bg')
        .value;
    expect(oldColor, isNot(equals(newColor)));
  });
}
