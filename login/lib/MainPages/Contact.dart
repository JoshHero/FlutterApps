
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';





class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  
  // COntacting through a phone call
  _launchCaller() async{
    const url = 'tel: 0553953055';
    if(await canLaunch(url)){
      await launch(url);
      }
      else{
      throw 'Could not launch $url';
    }
  }
// Contacting us through email
  _launchEmailApp()async{
    const url= "mailto:hilltopvisionghana@gmail.com?subject=No Subject&body=New%20Get in touch with us by sending an email";
    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw 'Could not launch $url';
    }
  }

  // Connecting through sms
  _launchSMS()async{
    const url= "sms: 0553953055?body=We'd love to hear from you";
    if(await canLaunch(url)){
       await launch(url);
    }
    else{
      throw 'Something went wrong, Could not launch :( $url';
    }
  }

  // Contacting us through Social Media
  // Twitter
  _launchTwitter()async{
    const url= 'https://mobile.twitter.com/radio_hilltop';
    if (await canLaunch(url)){
      await launch(url);
    }
    else{
      throw 'Could not launch $url';
    }
  }
  // Facebook
  _launchFacebook()async{
    const url='http://m.facebook.com/radiohilltop';
    if(await canLaunch(url)){
      await launch(url);
  } else{
    throw 'Could not launch $url';
 
  }}
  // Connect through Instagram
  _launchInstagram() async{
    const url= 'http://instagram.com/vision_hilltop';
    if (await canLaunch(url)){
      await launch(url);
    }
    else{
      throw 'Could not launch this $url';
    }
  }
  
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black26,
       appBar: AppBar(
         backgroundColor: Colors.black,
         title: Text('Contact us', 
         style:TextStyle( color: Colors.lightGreenAccent, fontWeight: FontWeight.bold) ,),
         actions: <Widget>[
           Image.asset('images/hilltop_follow.jpg', fit: BoxFit.contain, height: 44.0, width: 44.0,)
         ],),
         body: ListView(
           children: <Widget>[
             Card(
               child: ListTile(
               leading: Image.asset('images/twitter.png', height: 60.0, width: 60.0,),
               contentPadding: EdgeInsets.only(left: 10.0),
               subtitle: Text('Connect and follow us on Twitter',
               style: TextStyle(
               fontSize: 15,
               fontWeight: FontWeight.bold,
               color: Colors.black
               ),),
               dense: true,
               onTap: (){
                 _launchTwitter();
               },
             )
          ),
          Padding(padding: EdgeInsets.only(bottom: 10.0)
        ),
             Card(
               child: ListTile(
               leading: Image.asset('images/facebook.png', height: 60.0, width: 60.0,),
               contentPadding: EdgeInsets.only(left: 10.0),
               subtitle: Text('Connect and follow us on Facebook',
               style: TextStyle(
               fontSize: 15,
               fontWeight: FontWeight.bold,
               color: Colors.black
               ),),
               dense: true,
               onTap: (){
                 _launchFacebook();
               },
             ),
           ),
           Padding(
             padding: EdgeInsets.only(bottom: 10.0),
           ),
             Card(
               child: ListTile(
               leading: Image.asset('images/instagram.png', height: 60.0, width: 60.0,),
               contentPadding: EdgeInsets.only(left: 10.0),
               subtitle: Text('Connect and follow us on Instagram',
               style: TextStyle(
               fontSize: 15,
               fontWeight: FontWeight.bold,
               color: Colors.black
               ),),
               dense: true,
               onTap: (){
                 _launchInstagram();
               },
             ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 10.0),
        ),
             Card(
               child: ListTile(
               leading: Icon(Icons.phone,size: 56,color: Colors.green,),
               contentPadding: EdgeInsets.only(left: 10.0),
               subtitle: Text('Connect with us through a phone call',
               style: TextStyle(
               fontSize: 15,
               fontWeight: FontWeight.bold,
               color: Colors.black
               ),),
               dense: true,
               onTap: (){
                 _launchCaller();
               },
             )
          ),
          Padding(padding: EdgeInsets.only(bottom: 10.0)
        ),
             Card(
               child: ListTile(
               leading: Icon(Icons.email,size: 56,color: Colors.redAccent,),
               contentPadding: EdgeInsets.only(left: 10.0),
               subtitle: Text('Connect with us through an email',
               style: TextStyle(
               fontSize: 15,
               fontWeight: FontWeight.bold,
               color: Colors.black
               ),),
               dense: true,
               onTap: (){
                 _launchEmailApp();
               },
               )
             ),
             Padding(padding: EdgeInsets.only(bottom:10.0),),
             Card(
               child: ListTile(
               leading: Icon(Icons.message,size: 56,color: Colors.orangeAccent,),
               contentPadding: EdgeInsets.only(left: 10.0),
               subtitle: Text('Connect with us through an sms',
               style: TextStyle(
               fontSize: 15,
               fontWeight: FontWeight.bold,
               color: Colors.black
               ),),
               dense: false,
               onTap: (){
                 _launchSMS();
               },
             )

             )
           ],
         )
    );
             
                 
                  
         
         
         
         
         
         
         
    
  }
 }
      
    