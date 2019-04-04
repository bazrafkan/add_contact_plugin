import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:add_contact_plugin/add_contact_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> addContact() async {
    await AddContactPlugin.addContact;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Add Contact'),
        ),
        body: Center(
          child: RaisedButton(
          onPressed: () {
            addContact();
          },
          child: const Text('Add Contact'),
        ),
        ),
      ),
    );
  }
}
