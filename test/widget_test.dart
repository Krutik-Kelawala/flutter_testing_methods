import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/main.dart';


// TODO testing diff:
// Unit testing : A unit test tests a single function, method, or class
// Widget testing : A widget test tests a single widget.

/*
void main() {
  // TODO Single value testing
  test("Value needs to increment", () {
    final main = Main();
    main.increment();
    expect(main.value, 1);
  });

  test("Value needs to decrement", () {
    final main = Main();
    main.decrement();
    expect(main.value, -1);
  });

  test("Value needs to be incremented by 2", () {
    final main = Main();
    main.incrementPlus2();
    expect(main.value, 2);
  });
}  */

/*
 void main(){
  // TODO Group value testing
   late Main main;
   setUp(() {
     main = Main();
   });

   group("Main Screen", () {
     test("Value needs to increment", () {
       main.increment();
       expect(main.value, 1);
     });

     test("Value needs to decrement", () {
       main.decrement();
       expect(main.value, -1);
     });

     test("Value needs to be incremented by 2", () {
       main.incrementPlus2();
       expect(main.value, 2);
     });
   });
 }*/

/*
void main() {
  // TODO used for widget testing

  testWidgets("Display TextField", (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(MyApp());
    // TODO here write widget which is used in main.dart file
    // var textField = find.byType(TextButton);
    var textField = find.byType(TextField);
    expect(textField, findsOneWidget);

    await widgetTester.enterText(textField, "Hello World");
    expect(find.text("Hello World"), findsOneWidget);
  });

  testWidgets("FindOneWidget", (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(MyApp());
    // TODO here write widget which is used in main.dart file

    var textField = find.byType(TextField);
    expect(textField, findsOneWidget);
  });

  testWidgets("FindNWidget", (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(MyApp());
    // TODO here write widget which is used in main.dart file

    var textField = find.byType(TextField);
    expect(textField, findsNWidgets(2));
  });

  testWidgets("FindNothing", (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(MyApp());
    // TODO here write widget which is used in main.dart file

    var textField = find.byType(TextField);
    expect(textField, findsNothing);
  });

  testWidgets("FindWidgets", (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(MyApp());
    // TODO here write widget which is used in main.dart file

    var textField = find.byType(TextField);
    expect(textField, findsWidgets);
  });
}*/

void main() {
  // TODO pump and pumpWidget diff:
  // pump :- pump through re-rendering whole ui like a setState
  // pumpWidget :-

  // TODO below all are matchers
  // TDD Test Driven Development
  // findsNWidgets :- how many number of widgets
  // findsWidget :- expecting one or more than one widget in our code
  // findsNothing :- when we don't want to find anything
  // findsOneWidget :- find a one widget

// TODO used here widget testing
  testWidgets("Reverse a String", (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(MyApp());
    var textField = find.byType(TextField);
    expect(textField, findsOneWidget);
    await widgetTester.enterText(textField, "Hello World");
    expect(find.text("Hello World"), findsOneWidget);
    var button = find.text("Reverse");
    expect(button, findsOneWidget);
    await widgetTester.tap(button);
    await widgetTester.pump(); // pump through re-rendering whole ui like a setState
    expect(find.text("dlroW olleH"), findsOneWidget);
  });
}
