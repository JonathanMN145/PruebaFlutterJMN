// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_ptjmn/main.dart';

void main() {
  testWidgets('Rick & Morty App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Wait for the app to finish loading
    await tester.pumpAndSettle();

    // Verify that our app shows the correct title
    expect(find.text('Características Rick & Morty'), findsOneWidget);

    // Verify that we have either a CircularProgressIndicator or a ListView
    final hasProgressIndicator = find.byType(CircularProgressIndicator).evaluate().isNotEmpty;
    final hasListView = find.byType(ListView).evaluate().isNotEmpty;
    
    expect(hasProgressIndicator || hasListView, isTrue);
  });
}
