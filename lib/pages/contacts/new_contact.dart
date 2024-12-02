// ignore_for_file: use_build_context_synchronously, prefer_const_constructors_in_immutables

import 'package:bytebank_armazenamento_interno/database/dao/contact_dao.dart';
import 'package:bytebank_armazenamento_interno/models/contact.dart';
import 'package:flutter/material.dart';

class NewContact extends StatefulWidget {
  NewContact({super.key});

  @override
  State<NewContact> createState() => _NewContactState();
}

class _NewContactState extends State<NewContact> {
  final TextEditingController _nameController = TextEditingController();
  final ContactDao _dao = ContactDao();

  final TextEditingController _accountNumberController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Contato'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Nome Completo',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
              ),
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: TextField(
              controller: _accountNumberController,
              decoration: const InputDecoration(
                labelText: 'Número da Conta',
                prefixIcon: Icon(Icons.account_balance),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
              ),
              style: const TextStyle(
                fontSize: 24,
              ),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: const Text(
                  'Confirmar',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                onPressed: () {
                  final String name = _nameController.text;
                  final int? accountNumber =
                      int.tryParse(_accountNumberController.text);
                  final Contact newContact = Contact(0, name, accountNumber!);
                  _dao.save(newContact).then((id) {
                    Navigator.pop(context, true);
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
