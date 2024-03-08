import 'package:flutter/material.dart';
class LanguageSelectionPage extends StatefulWidget {
  @override
  _LanguageSelectionPageState createState() => _LanguageSelectionPageState();
}

class _LanguageSelectionPageState extends State<LanguageSelectionPage> {
  String selectedLanguage = 'English';

  final List<String> languages = ['English','Hindi','Malayalam','Tamil','Kannada','Marati', 'Spanish', 'French', 'German'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Select Language',style: TextStyle(
            color: Colors.black
          ),),
        ),
        body: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'Select your preferred language:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: languages.map((language) {
                return RadioListTile(
                  title: Text(language),
                  value: language,
                  groupValue: selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      selectedLanguage = value.toString();
                    });
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement the logic to set the selected language
                // You can use a package like shared_preferences to store the selected language
                // After setting the language, you can navigate to the next screen or home page
                // Example: Navigator.pushReplacementNamed(context, '/home');

                // Close the language selection page
                Navigator.pop(context);
              },
              child: Text('Continue'),
            ),

          ],
        ),
    );
  }
}
