import 'package:flutter/material.dart';

class Validation extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Validation Demo'),
      ),
      body: Card(
        elevation: 2,
        margin: EdgeInsets.all(8),
        child: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(16),
            children: <Widget>[
              TextFormField(
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(hintText: 'FirstName'),
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'FirstName is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(hintText: 'LastName'),
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'LastName is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(hintText: 'Email'),
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Email is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: Icon(
                      Icons.visibility_off,
                    )),
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Password is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              RaisedButton(
                child: Text('submit'),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    //
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
