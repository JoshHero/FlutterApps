import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: TextFormField(
                smartQuotesType: SmartQuotesType.enabled,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: 'Please enter a valid email',
                  labelText: 'Email',
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: TextFormField(
                smartQuotesType: SmartQuotesType.enabled,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: 'Please enter a valid password',
                  labelText: 'Password',
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      stops: [
                        2,
                        4,
                        6,
                        2
                      ],
                      colors: [
                        Colors.orangeAccent,
                        Colors.blue,
                        Colors.blueAccent,
                        Colors.black45
                      ])),
              child: Align(alignment: Alignment.center, child: Text('Register')),
            )
          ]),
        ),
      ),
    );
  }
}
