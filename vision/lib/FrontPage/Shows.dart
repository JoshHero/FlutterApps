import 'package:flutter/material.dart';

class Shows extends StatefulWidget {
  @override
  _ShowsState createState() => _ShowsState();
}

class _ShowsState extends State<Shows> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
         _buildShows('images/Levitate Show.jpg'),
         _buildShows('images/Be_Ye_Transformed.jpg'),
         _buildShows('images/1000words.jpg'),
         _buildShows('images/me_before_you.jpg'),
         _buildShows('images/Christeenager.jpg'),
         _buildShows('images/Great_I_Am.jpg'),
         _buildShows('images/Trap_and_Grace.jpg'),
         _buildShows('images/the_fifth.jpg'),
         _buildShows('images/Beast_mode.jpg'),
         _buildShows('images/Peter_Ojum.jpg'),
         _buildShows('images/at_the_altar.jpg')
         
      ],

      
    );
  }

Widget _buildShows(String imgPath,){
  return  Padding(
    padding: EdgeInsets.only(right:13.0, left: 5.0),
    child: Container(
       height: 100,
       decoration: BoxDecoration(
       color: Colors.black,
       borderRadius: BorderRadius.only(
          bottomLeft: const Radius.circular(15),
          bottomRight: const Radius.circular(15)
        
      ),),
      child: Column(
      children: <Widget>[
        SizedBox(height: 1,),
          Image.asset(imgPath, fit:BoxFit.cover,height:200, width: 180, ),
         
          // SizedBox(height: 10,),
         
      ],
      ),
    )
  );

}
}
