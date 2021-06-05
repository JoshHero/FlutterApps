

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        centerTitle: true,
      ),
      body: Form(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical:20.0,
                horizontal: 20.0),
              child: TextFormField(
                smartQuotesType: SmartQuotesType.enabled,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: 'Please enter a valid email',
                  labelText: 'Email',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.orangeAccent,
                      width: 2,)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.orangeAccent,
                      width: 2,)),
                  ),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical:20.0,
                horizontal: 20.0),
              child: TextFormField(
                smartQuotesType: SmartQuotesType.enabled,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: 'Please enter a valid password',
                  labelText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.orangeAccent,
                      width: 2,)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.orangeAccent,
                      width: 2,)),
                  ),),
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
                  stops: [2,4,6,2],
                  colors: [
                    Colors.orangeAccent,
                    Colors.blue,
                    Colors.blueAccent,
                    Colors.black45
                  ] )
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text('Register')),
            )

          ]
        ) ,),
    );
  }
}