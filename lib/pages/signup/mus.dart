import 'package:flutter/material.dart';

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  String _name = 'mus';
  String _password = 'mus';
  String _date = 'mus';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      appBar: AppBar(
        title: Text('right signup'),
      ),
      body: Container(
          child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Container(
              child: TextFormField(
                validator:(value){
                  if (value==null|| value.isEmpty) {
                     return 'Please enter some text';
                  }
                  else{
                    return null
                  }
                } ,
                  decoration: InputDecoration(
                      labelText: 'name',
                      suffixIcon: Icon(Icons.login),
                      icon: Icon(Icons.person))),
            )
            // Add TextFormFields and ElevatedButton here.
          ],
        ),
      )),
    );
  }
}
