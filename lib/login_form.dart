import 'package:flutter/material.dart';
class LoginFormValidation extends StatelessWidget {
  const LoginFormValidation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Form"),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: FormValidation(),
    );
  }
}
class FormValidation extends StatefulWidget {
  @override
  _FormValidationState createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: Colors.deepPurpleAccent[50],
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              validator: (String? value) {
                if (value == null || value.trim().length == 0) {
                  return "Email is Required";
                }
                if (!RegExp(
                        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                    .hasMatch(value)) {
                  return "please Enter the valid email address";
                }
                return null;
              },
              decoration: InputDecoration(labelText: "Email"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (String? value) {
                if (value == null || value.trim().length == 0) {
                  return "Password is Required";
                }
                if (value.length < 6) {
                  return "Password must be at least 6 characters long";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Password",
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState != null && _formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, "/homepage");
                }else {
                  return;
                }
                _formKey.currentState?.save();
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
