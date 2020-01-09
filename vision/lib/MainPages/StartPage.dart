

import 'package:flutter/material.dart';
import 'package:vision/MainPages/Contact.dart';
import 'package:vision/FrontPage/Shows.dart';
import 'package:vision/FrontPage/What_We_Do.dart';


class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> 

with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState(){
    super.initState();
    tabController=TabController(vsync: this, length: 5);
  }


  Widget popupmenu(){

    return PopupMenuButton<String>(
      icon: Icon(Icons.menu, color: Colors.white, size: 30,),
      itemBuilder: (BuildContext context)=><PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: 'one_val',
          child: Text('Contact Us'),
        ),
         PopupMenuItem<String>(
          value: 'second_val',
          child: Text('About'),
         )
        

      ],

      onSelected: (retValue){
       print(retValue);
       if (retValue=='one_val'){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Contact()));
       } else if(retValue=='second_val'){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>About()));

       }

       
      },
    );

  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('Hilltop', 
        style: TextStyle(
          color: Colors.green, 
          fontWeight: FontWeight.bold,
          fontFamily: 'Raleway'
          ), ),
          actions: <Widget>[
            popupmenu(),
            
          ],),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top:10.0, left: 10.0, bottom: 10.0),
              child: Text('Hilltop Vision',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.green
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: TabBar(
                controller: tabController,
                indicatorColor: Colors.transparent,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey.withOpacity(0.6),
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    child: Text('Amazing Shows',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24,
                    )),
                  ),
                    Tab(
                    child: Text('',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 20, 
                    )),
                  ),
                  Tab(
                    child: Text('',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 20,
                    )),
                  ),
                  Tab(
                    child: Text('',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 20,
                    )),
                  ),
                  Tab(
                    child: Text('',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 20,
                    )),
                  ),
                    
                ],
              ),
            ),
            Container(
              height: 201,
              child: TabBarView(
                controller: tabController,
                children: <Widget>[
                  Shows(),
                  Shows(),
                  Shows(),
                  Shows(),
                  Shows(),
                  ],
              ),
            ),
            SizedBox(height: 10 ,),
            Padding(
              padding:EdgeInsets.all(10), 
              child: Text('Blogs: Exciting Reads', 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Raleway',
                fontSize: 24
              ) ,),),
              SizedBox(height: 10,),
              Container(
                height:255,
                width: 230,
                
                child:ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                     _buildBlogs('images/summer_thank_you.jpg', 'Summer Exposition'),
                    _buildBlogs('images/hustle_1.jpg', 'Hustle Series'),
                    _buildBlogs('images/hustle_2.jpg', 'Monaaaaay'),
                    _buildBlogs('images/hustle_3.jpg', 'Monaaaaay 2'),
                    _buildBlogs('images/what-are_you_eating.jpg', 'What Are You Eating'),
                    

                ],)),
              SizedBox(height: 40,)
                
                
          ],
       )

    );
  }
 Widget _buildBlogs(String imgPath,  String showname ){
  return  Padding(
    padding: EdgeInsets.only(right:13.0, left: 5.0),
    child: Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),

        ),
        
      ),
      child: Column(
      children: <Widget>[
        SizedBox(height: 1,),
          Image.asset(imgPath, fit:BoxFit.cover,height:230, width: 230, ),
         
          SizedBox(height: 5,),
         
          Padding(
            padding: EdgeInsets.all(0.5),
            child: Text(showname,style: 
            TextStyle(
              fontWeight: FontWeight.bold,
              decorationColor: Colors.green,
              color: Colors.white
            ),),
            ),
      ],
      ),
    )
  );
  }
}
