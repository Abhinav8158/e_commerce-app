import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewAddres extends StatefulWidget {
  const NewAddres({Key? key}) : super(key: key);

  @override
  State<NewAddres> createState() => _NewAddresState();
}

class _NewAddresState extends State<NewAddres> {
  final _formKey = GlobalKey<FormState>(); // Create a GlobalKey for the form

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('New Address'),
      ),
      body: Form(
        key: _formKey, // Assign the GlobalKey to the Form widget
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              // Text input for the address
              TextFormField(
                decoration: InputDecoration(labelText: 'First Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an First Name';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Last Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an Last Name';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone Number'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an Phone Number';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'PIN Code'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'City'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'House  Number'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Road name,Area,Colony'),
              ),
              // Add more form fields for other details as needed
              // Submit button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(

                  onPressed: () {
                    // Validate the form
                    if (_formKey.currentState!.validate()) {
                      // Form is valid, handle form submission here
                      // You can access form fields using their controllers
                      // For example: addressController.text
                    }
                  },
                  child: Text('Save address'),
                  style: ElevatedButton.styleFrom(
                  primary: Colors.indigo,
                    fixedSize: Size(600, 50),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
