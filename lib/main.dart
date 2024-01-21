/*
// TODO used for unit testing
class Main {
  int value = 0;

  increment() => value++;

  decrement() => value--;

  incrementPlus2() => value += 2;
}
*/

// TODO used for widget testing
import 'package:flutter/material.dart';

// TODO Three type of testing in flutter : Unit Test(test method), Widget Test(test widget) and Integration Test(test method & widget both)

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Widget Testing")),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController controller = TextEditingController();

  String reverse = "";

  String reverseText(String text) {
    return text.split("").reversed.join();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(controller: controller, decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Enter text")),
          // TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Enter text")),
          Container(
              decoration: BoxDecoration(border: Border.all(color: reverse.isNotEmpty ? Colors.black : Colors.transparent, width: 1)),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              child: Text(reverse)),
          TextButton(
              onPressed: () {
                setState(() {
                  reverse = reverseText(controller.text.toString());
                });
              },
              child: Text("Reverse")),
        ],
      ),
    );
  }
}
