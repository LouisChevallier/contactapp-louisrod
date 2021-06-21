import 'package:flutter/material.dart';

class ContactList extends StatefulWidget {
  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  void initState() {
    super.initState();
    //getAllContact();
  }

  getAllContact() async {
    //use database to get contact
  }

  manageContact(String action) {
    print(action);
  }

  navigateDetail(int index) {}

  ListTile showContactTile(String contactName, String phone, int index) {
    return ListTile(
        title: Text(contactName),
        subtitle: Text(phone),
        trailing: PopupMenuButton(
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                value: "edit",
                child: Text("Edit"),
              ),
              PopupMenuItem(
                value: "delete",
                child: Text("Delete"),
              ),
            ];
          },
          onSelected: (String value) => manageContact(value),
        ),
        onTap: () => navigateDetail(index));
  }

  @override
  Widget build(BuildContext context) {
    _pushAdd() {}
    return Scaffold(
        appBar: AppBar(
          title: Text("Contact List"),
          actions: [
            IconButton(
                icon: Icon(Icons.add_circle_outline_sharp), onPressed: _pushAdd)
          ],
        ),
        body: Container());
  }
}
