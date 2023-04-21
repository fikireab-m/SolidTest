import 'dart:math';
import 'package:flutter/material.dart';

/// The MyApp application widget.
class MyApp extends StatelessWidget {
  /// Creates a new instance of [MyApp].
  ///
  /// The [key] parameter is optional and is used to provide a unique
  /// identifier for this widget.
  const MyApp({super.key});

  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SolidTest',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const SolidTest(title: 'Solid Software'),
    );
  }
}

/// A widget that displays a centered text and changes its background color
/// to a random color when tapped.
class SolidTest extends StatefulWidget {
  /// The title of the home page.
  final String title;

  /// Creates a new instance of [SolidTest].
  ///
  /// [title] parameter is required and specifies the title of the home page.
  const SolidTest({Key? key, required this.title}) : super(key: key);

  @override
  _SolidTestState createState() => _SolidTestState();
}

class _SolidTestState extends State<SolidTest> {
  Color? _backgroundColor;

  @override
  void initState() {
    super.initState();
    _backgroundColor = Colors.white;
  }

  /// This method generates a random color.
  /// The color will have random red, green, and blue values between 0 and 255,
  /// and a random alpha value between 0 and 255.
  Color _generateRandomColor() {
    final random = Random();
    final r = random.nextInt(256);
    final g = random.nextInt(256);
    final b = random.nextInt(256);
    final a = random.nextInt(256);

    return Color.fromARGB(a, r, g, b);
  }

  /// This method changes the background color of the home page to a random
  /// color when the home page is tapped.
  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = _generateRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeBackgroundColor,
      child: Scaffold(
        backgroundColor: _backgroundColor,
        body: const Center(
          child: Text('Hello there'),
        ),
      ),
    );
  }
}
