import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("HomePage"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Welcome to the HomePage",
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
                child: Text("Go to Login page"))
          ],
        ),
      ),
    );
  }
}
