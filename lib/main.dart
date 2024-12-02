import 'package:bytebank_armazenamento_interno/database/app_database.dart';
import 'package:bytebank_armazenamento_interno/models/contact.dart';
import 'package:bytebank_armazenamento_interno/pages/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ByteBank());

  // save(Contact(0, 'alex', 1000)).then((id) {
    findAll().then((contacts) => debugPrint(contacts.toString()));
  // });
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
