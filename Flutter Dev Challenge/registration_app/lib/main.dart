import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:registration_app/utilities/navigation/app_pages.dart';
import 'package:registration_app/utilities/navigation/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Registration App',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
          headline1: TextStyle(fontSize:25, color: Colors.white, fontWeight:FontWeight.w500),
          caption: TextStyle(fontSize: 19, color: Colors.green, fontWeight:FontWeight.w900),),
        inputDecorationTheme: InputDecorationTheme(
           enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.orangeAccent,
                      width: 2,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.orangeAccent,
                      width: 2,
                    )
        ))
         ),
        initialRoute: AppRoutes.registerScreen,
        getPages: AppPages.pages,
    );
  }
}
