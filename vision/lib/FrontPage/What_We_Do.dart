import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('About',
        style:TextStyle(
          color: Colors.lightGreenAccent
        ) ),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: <Widget>[
          Card(
            color: Colors.lightGreen,
            child: ListTile(
              title: Image.asset('images/hilltop_online_radio.jpg', height:250, width:250),
              subtitle: Text('Hilltop radio is a platform for broadcasting information with our primary target audience being the youth of Africa. Uncompromising on fun and entertainment, we broadcast content to set your spirit, mind soul and bodies in the right resonance. We at Hilltop believe that, we are responsible for our future and this depends on not just one person, but all of us.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.black
              ),),
            ),
          ),
          Padding(
           padding: EdgeInsets.only(top: 15.0),
          ),
          Card(
            color: Colors.lightGreen,
            child: ListTile(
              title: Icon(Icons.calendar_today, size: 250, color: Colors.black,),
              subtitle: Text('Hilltop Events is the second arm of Hilltop Vision. A department solely setup to organize programs and bring up intiatives to help the youth take the center stage. Programs such as the Hilltop Make It Happen(HMH) Series is a typical example of what Hilltop Events is all about. Creating the ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black
              ),),
            ),
          ),
           Padding(
           padding: EdgeInsets.only(top: 15.0),
          ),
           Card(
             color: Colors.lightGreen,
            child: ListTile(
              title: Image.asset('images/outreach_icon.jpg', height: 250, width: 250,),
              subtitle: Text('Hilltop Impact is the division that is deeply concerned about giving back to our society. We believe that even that the littlest thing we do can go a long way into changing the lives of the others. Hilltop Impact as the name suggests seeks to make an impact in the lives of people that are in hopeless situations or need a helping hand.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.black
              ),),
            ),
          ),
        ],
      ),
    );
  }
}