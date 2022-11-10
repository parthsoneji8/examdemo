import 'package:examdemo/Secondpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MainDemo());
}

class MainDemo extends StatelessWidget {
  MainDemo({super.key});

  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _phoneno = new TextEditingController();
  TextEditingController _age = new TextEditingController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Details Submit"),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(40, 100, 40, 0),
          child: Column(children: [
            TextField(
              controller: _name,
              decoration: InputDecoration(
                labelText: 'Enter Name',
                hintText: 'Enter Your Name',
                errorText: valodator(),
                border: myinputborder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _email,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                labelText: 'Enter email',
                hintText: 'Enter Your Email-Id',
                errorText: valodator(),
                border: myinputborder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _phoneno,
              decoration: InputDecoration(
                labelText: 'Enter Phone No',
                hintText: 'Enter Your Phone No',
                errorText: valodator(),
                border: myinputborder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _age,
              decoration: InputDecoration(
                labelText: 'Enter Age',
                hintText: 'Enter Your Age',
                errorText: valodator(),
                border: myinputborder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: (() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Secondpage(
                          name: _name.text,
                          email: _email.text,
                          phone: _phoneno.text,
                          age: _age.text)));
                }),
                child: Text('Submit'))
          ]),
        ),
      ),
    );
  }

  myinputborder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        borderSide: BorderSide(
          color: Colors.black,
          width: 3,
        ));
  }

  valodator() {
        (String value) {
      if (value.isEmpty) {
        return 'Enter your Field';
      }
      return null;
    };
  }
}

