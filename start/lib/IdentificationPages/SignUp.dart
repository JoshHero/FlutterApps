import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vision/IdentificationPages/LoginPage.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  String _email, _password;
  final GlobalKey<FormState> _formkey= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
          image: AssetImage('images/join_the_resonance.jpg',), 
          fit: BoxFit.cover,
          color: Colors.black87,
          colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/hilltop_vision.png', height: 120.0, colorBlendMode: BlendMode.darken,),
              SizedBox(height: 20),
              Form(
                key: _formkey,
                child:Theme(
                  data: ThemeData(
                    brightness: Brightness.dark, 
                    primarySwatch: Colors.lightGreen,
                    indicatorColor: Colors.green,
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(
                        color: Colors.green,
                        fontSize: 20.0
                      )

                    )
                  ), 
                  
                  child:Column(
                  children: <Widget>[
                     TextFormField(
                       validator: (input){
                         if (input.isEmpty){
                         return 'Email required';}
                       },
                       onSaved: (input)=>_email=input,
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                  )
                ),
                SizedBox(height: 10.0,),
                TextFormField(
                  validator: (input){
                    if(input.length<8){
                      return 'Your password should be more than 8 characters';
                    }
                  },
                  onSaved: (input)=> _password= input,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20.0,),
                RaisedButton(
                  color: Colors.green,
                  child: Text('Login'),
                  textColor: Colors.white,
                  onPressed: signIn,
                ),
                FlatButton(
                  colorBrightness: Brightness.light,
                  child: Text('Is this your first time here? Click here to sign up', style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                  ),),
                  onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
                  },
                  textColor: Colors.white,
                  )
               ],
            )
          ),
      ),
          
            ],
          )
        ],
      ),
    );
  }

 Future <void> signIn()async{
   final formState= _formkey.currentState;
   if (formState.validate()){
     formState.save();
     try {
       FirebaseUser user = (await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email,password: _password)).user;
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
     } catch (e) {
     }
     
   }
  
 }





}
