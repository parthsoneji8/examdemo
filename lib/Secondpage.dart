


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Secondpage extends StatefulWidget {
  String name, email, phone, age;

  Secondpage(
      {required this.name,
        required this.email,
        required this.phone,
        required this.age});

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Text('Name: ${name}'),
          Text('Email: ${email}'),
          Text('phone no: ${phone}'),
          Text('Age: ${age}'),
        ],
      ),
    );
  }

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    throw Secondpage(
      name: 'name',
      email: 'email',
      phone: 'phoneno',
      age: 'age',
    );
  }
}

