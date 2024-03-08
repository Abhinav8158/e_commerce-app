import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AccountEdit extends StatefulWidget {
  const AccountEdit({Key? key}) : super(key: key);

  @override
  State<AccountEdit> createState() => _AccountEditState();
}

class _AccountEditState extends State<AccountEdit> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text("Edit Account"),
        actions: [
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: () {
              // Handle shopping cart button tap here
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 400,
            color: Colors.indigoAccent,
            child: Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 70,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN61Q-7MGeXmbkG93I6jxczRN9gjlSgN_91raHDgzJOtS86ttcmOF6HIy9Kl_pdAGGWQM&usqp=CAU",
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: ((builder) => BottomSheet()),
                        );
                      },
                      child: Icon(
                        Icons.edit,
                        color: Colors.blue,
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                // Add your form fields here
                // Example TextFormField:
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'First Name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Firstname';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Last Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Last name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20.0),
                TextButton(
                  onPressed: () {
                    // Handle form submission here
                    if (_formKey.currentState!.validate()) {
                      // Form is valid, process the data
                    }
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.indigoAccent),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration:
                        InputDecoration(labelText: 'Mobile Number'),
                      ),
                    ),
                    SizedBox(width: 10), // Add spacing between the text field and button
                    TextButton(
                      onPressed: () {
                        // Handle TextButton press here
                      },
                      child: Text('Update'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget BottomSheet() {
    Future<void> getImage(ImageSource source) async {
      final pickedFile = await ImagePicker().pickImage(source: source);

      if (pickedFile != null) {
        // You can use the pickedFile.path to access the selected image.
        // Do whatever you need to do with the selected image here.
      }
    }
  return Container(
    height: 100,
    width: double.infinity,
    margin: EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 20,
    ),
    child: Column(
      children: [
        Text(
          "Choose Profile photo",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 20),
            IconButton(
              onPressed: () {
                getImage(ImageSource.camera);
              },
              icon: Icon(Icons.camera),
            ),
            Text("Camera"),
            SizedBox(width: 20),
            IconButton(
              onPressed: () {
                getImage(ImageSource.gallery);
              },
              icon: Icon(Icons.image),
            ),
            Text("Gallery"),

          ],
        ),
      ],
    ),
  );
}
