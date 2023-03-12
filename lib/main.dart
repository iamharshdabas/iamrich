import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(128, 0, 255, 1),
        ),
      ),
      home: const MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(38, 0, 77, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(128, 0, 255, 1),
        title: const Center(
          child: Text(
            'I am Rich',
            style: TextStyle(
              color: Color.fromRGBO(242, 229, 255, 1),
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(64),
              ),
              color: Color.fromRGBO(128, 0, 255, 1),
            ),
            child: const Image(
              image: AssetImage('images/diamond.png'),
            ),
          ),
        ),
      ),
    );
  }
}
