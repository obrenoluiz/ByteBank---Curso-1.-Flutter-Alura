import 'package:bytebank_armazenamento_interno/pages/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ByteBank());
}

class ByteBank extends StatelessWidget {
  const ByteBank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
        ).copyWith(
          primary: Colors.green[900],
          secondary: Colors.blueAccent[700],
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.blueAccent,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
