import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Change Password'),
        ),
        body: PasswordForm(),
      ),
    );
  }
}

class PasswordForm extends StatefulWidget {
  @override
  _PasswordFormState createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {
  final passwordController = TextEditingController();

  bool hasMinLength = false;
  bool hasUppercase = false;
  bool hasLowercase = false;
  bool hasNumber = false;
  bool hasSpecialChar = false;

  void validatePassword(String password) {
    setState(() {
      hasMinLength = password.length >= 8;
      hasUppercase = RegExp(r'[A-Z]').hasMatch(password);
      hasLowercase = RegExp(r'[a-z]').hasMatch(password);
      hasNumber = RegExp(r'[0-9]').hasMatch(password);
      hasSpecialChar = RegExp(r'[!@#\$&*~]').hasMatch(password);
    });
  }

  @override
  void initState() {
    super.initState();
    passwordController.addListener(() {
      validatePassword(passwordController.text);
    });
  }

  Widget buildValidationItem(String text, bool isValid) {
    return Row(
      children: [
        Icon(
          isValid ? Icons.check_circle : Icons.radio_button_unchecked,
          color: isValid ? Colors.green : Colors.grey,
          size: 18,
        ),
        SizedBox(
          width: 8
          ),
        Text(
          text,
          style: TextStyle(
            color: isValid ? Colors.green : Colors.grey,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Enter Your Current Password',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8
            ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Current Password',
              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.visibility,
                ),
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(
            height: 16
            ),
          Text(
            'Enter Your New Password',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8
            ),
          TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'New Password',
              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.visibility,
                ),
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(
            height: 16
            ),
          Text('Password Must:', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(
            height: 8
            ),
          buildValidationItem('Include lower', hasLowercase),
          buildValidationItem('Upper lower', hasUppercase),
          buildValidationItem('Include at least one special character', hasSpecialChar),
          buildValidationItem('Include numeric character', hasNumber),
          buildValidationItem('Minimum password length 8 characters', hasMinLength),
          
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
