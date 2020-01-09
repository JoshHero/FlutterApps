import 'package:flutter/material.dart';
//import 'package:vision/IdentificationPages/LoginPage.dart';
//import 'package:start/Identification/LoginPage.dart';
import './MainPages/Blog.dart';
import './MainPages/Radio.dart';
import './MainPages/Contact.dart';
import './MainPages/StartPage.dart';








void main(){
  runApp(
    MaterialApp(
      title: 'Hilltop',
      color: Colors.lightGreenAccent[400],
      debugShowCheckedModeBanner: false,
      home: HomePage(),
        routes: <String, WidgetBuilder>{
          '/Radio': (BuildContext context) => RadioPage(),
          '/Blog': (BuildContext context)=> Blog(),
          '/Contact':(BuildContext context)=> Contact()
  
        
        }
         ));
      
     
    
  
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  int _selectedPage=1;
  final _pageOptions=[
    
    StartPage(),
    RadioPage(),
    Blog()
  ];
  @override
  Widget build(BuildContext context) {

  


  // Building the body of the app
    return Scaffold(
         backgroundColor: Colors.black,
    
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.green,
      currentIndex: _selectedPage,
      onTap: (int index){
        setState(() {
         _selectedPage=index; 
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home')
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.radio),
          title: Text('Radio'),
         ),
          BottomNavigationBarItem(
          icon: Icon(Icons.library_books),
          title: Text('Blogs')
          ),


      ]
    ),
    
      
    
   );
  }
}







