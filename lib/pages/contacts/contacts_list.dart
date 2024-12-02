import 'package:bytebank_armazenamento_interno/database/app_database.dart';
import 'package:bytebank_armazenamento_interno/models/contact.dart';
import 'package:bytebank_armazenamento_interno/pages/contacts/new_contact.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: FutureBuilder<List<Contact>>(
        initialData: List.empty(),
        future: findAll(),
        builder: (context, snapshot) {          
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return const Center(child: CircularProgressIndicator());
            case ConnectionState.waiting:
              return const Center(child: CircularProgressIndicator());
            case ConnectionState.active:
              return const Center(child: CircularProgressIndicator());
            case ConnectionState.done:
              final List<Contact> contacts = snapshot.data!;
              return ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  final Contact contact = contacts[index];
                  return _ContactItem(contact);
                },
              );
            default:
              return const Text('Ocorreu um erro ao buscar os usuários.');
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => NewContact(),
                ),
              )
              .then((newContact) => debugPrint(newContact.toString()));
        },
      ),
    );
  }
}

class _ContactItem extends StatelessWidget {
  final Contact contact;

  const _ContactItem(this.contact);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).primaryColor,
          child: Text(contact.name[0]),
        ),
        title: Text(contact.name),
        subtitle: Text(contact.accountNumber.toString()),
      ),
    );
  }
}
