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
  String _gender = 'mus';
  String _faculty = 'mus';
  String _country = 'mus';
  String _level = 'mus';
  String _spiciality = 'mus';
  String _email = 'mus';
  String _password = 'mus';
  String _phone = 'mus';
  bool is_pass = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('right signup'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Container(
              child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Container(
                  child: Image.asset('assets/signup.jpg'),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green),
                    child: TextFormField(
                        obscureText: is_pass,
                        keyboardType: TextInputType.visiblePassword,
                        maxLength: 20,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          } else {
                            _name = value;
                            return null;
                          }
                        },
                        onSaved: (value) {},
                        decoration: InputDecoration(
                            fillColor: Color.fromARGB(255, 26, 255, 33),
                            label: Text('mustapha'),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.password),
                              onPressed: () {
                                setState(() {
                                  is_pass = !is_pass;
                                });
                                print("hada is pass$is_pass");
                              },
                            ),
                            icon: Icon(Icons.person))),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                    child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        maxLength: 20,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          } else {
                            _gender = value;
                            return null;
                          }
                        },
                        onSaved: (value) {},
                        decoration: InputDecoration(
                            labelText: 'Gender',
                            suffixIcon: Icon(Icons.login),
                            icon: Icon(Icons.person))),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      maxLength: 20,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else {
                          _faculty = value;
                          return null;
                        }
                      },
                      onSaved: (value) {},
                      decoration: InputDecoration(
                          labelText: 'Faculty',
                          suffixIcon: Icon(Icons.login),
                          icon: Icon(Icons.person))),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      maxLength: 20,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else {
                          _country = value;
                          return null;
                        }
                      },
                      onSaved: (value) {},
                      decoration: InputDecoration(
                          labelText: 'Country',
                          suffixIcon: Icon(Icons.login),
                          icon: Icon(Icons.person))),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      maxLength: 20,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else {
                          _level = value;
                          return null;
                        }
                      },
                      onSaved: (value) {},
                      decoration: InputDecoration(
                          labelText: 'Level',
                          suffixIcon: Icon(Icons.login),
                          icon: Icon(Icons.person))),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      maxLength: 20,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else {
                          _spiciality = value;
                          return null;
                        }
                      },
                      onSaved: (value) {},
                      decoration: InputDecoration(
                          labelText: 'Spiciality',
                          suffixIcon: Icon(Icons.login),
                          icon: Icon(Icons.person))),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      maxLength: 20,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else {
                          _email = value;
                          return null;
                        }
                      },
                      onSaved: (value) {},
                      decoration: InputDecoration(
                          labelText: 'Email',
                          suffixIcon: Icon(Icons.login),
                          icon: Icon(Icons.person))),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      maxLength: 20,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else {
                          _password = value;
                          return null;
                        }
                      },
                      onSaved: (value) {},
                      decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: Icon(Icons.login),
                          icon: Icon(Icons.person))),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      maxLength: 20,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else {
                          _level = value;
                          return null;
                        }
                      },
                      onSaved: (value) {},
                      decoration: InputDecoration(
                          labelText: 'Repeat Password',
                          suffixIcon: Icon(Icons.login),
                          icon: Icon(Icons.person))),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      maxLength: 20,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else {
                          _phone = value;
                          return null;
                        }
                      },
                      onSaved: (value) {},
                      decoration: InputDecoration(
                          labelText: 'phone number',
                          suffixIcon: Icon(Icons.login),
                          icon: Icon(Icons.person))),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                      print('namme is $_name');
                      print("email is $_email");
                      print("gender is $_gender");
                      print("faculty is $_faculty");
                      print("country is $_country");
                      print("level is $_level");
                      print("spciality is $_spiciality");
                      print("email is $_email");
                      print("pass is $_password");
                      print("phone is $_phone");
                    }
                  },
                  child: const Text('signup_mustapha'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      is_pass = !is_pass;
                    });
                    print("hada is pass$is_pass");
                  },
                  child: const Text('login'),
                ),
                // Add TextFormFields and ElevatedButton here.
              ],
            ),
          )),
        ),
      ),
    );
  }
}
