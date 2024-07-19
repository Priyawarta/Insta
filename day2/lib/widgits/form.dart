import 'package:flutter/material.dart';

class FormWidgid extends StatefulWidget {
  const FormWidgid({super.key});

  @override
  State<FormWidgid> createState() => _FormWidgidState();
}

class _FormWidgidState extends State<FormWidgid> {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';

  final _formKey = GlobalKey<FormState>();

  //......function for submitt
  trysubmit() {
    final isvalid = _formKey.currentState!.validate();
    if (isvalid) {
      _formKey.currentState!.save();
      submitform();
    } else {
      print('error');
    }
  }

  submitform() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Enter first name'),
                    key: ValueKey('firstname'),
                    validator: (Value) {
                      if (Value.toString().isEmpty) {
                        return 'firstname should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      firstname = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Enter Last Name'),
                    key: ValueKey('lastname'),
                    validator: (Value) {
                      if (Value.toString().isEmpty) {
                        return 'lastname should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      lastname = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'enter email'),
                    key: ValueKey('email'),
                    validator: (Value) {
                      if (Value.toString().isEmpty) {
                        return 'email should not be empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      email = value.toString();
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Enter password'),
                    key: ValueKey('password'),
                    validator: (Value) {
                      if (Value.toString().length <= 5) {
                        return 'Password should contain more then 5 character';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      password = value.toString();
                    },
                  ),
                  TextButton(
                      onPressed: () {
                        trysubmit();
                      },
                      child: Text('Submit'))
                ],
              )),
        ),
      ),
    );
  }
}
