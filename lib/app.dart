//nicher function er kaj holo app er information, theme, others data globally control korar jonno.
import 'package:flutter_guide/my_guides/All_input_fields.dart';
import 'package:flutter_guide/my_guides/alert_all_widgets.dart';
import 'package:flutter_guide/my_guides/all_buttons.dart';
import 'package:flutter_guide/my_guides/bottom_nav_bar.dart';
import 'package:flutter_guide/my_guides/container_all_things.dart';
import 'package:flutter_guide/my_guides/grid-builder.dart';
import 'package:flutter_guide/my_guides/list_view_widget.dart';
import 'package:flutter_guide/my_guides/stack_widgets.dart';

import 'my_guides/expanded_flexibale.dart';
import 'my_guides/mediaquery_orientation_acpectratio_fraction.dart';
import 'package:flutter/material.dart';

import 'my_guides/tabs_bar_and_drawer.dart';

///shadharonoto ey nicher widgets gula app.dart e thake.
class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      ///full app er theme design ekhane dite hoy...................
      ///
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.orange,
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                topLeft: Radius.circular(25),
                topRight: Radius.circular(0),
                bottomRight: Radius.circular(25),
              ),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.orange, width: 3),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.orange, width: 3),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              topRight: Radius.circular(0),
              topLeft: Radius.circular(25),
              bottomLeft: Radius.circular(0),
            ),
            borderSide: BorderSide(color: Colors.orange, width: 4),
          ),
          hintStyle: TextStyle(color: Colors.purple),
          labelStyle: TextStyle(color: Colors.green),
          helperStyle: TextStyle(color: Colors.orange),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontSize: 16,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
          ),
          titleMedium: TextStyle(fontSize: 14, color: Colors.red),
        ),
        cardTheme: CardThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0),
              topLeft: Radius.circular(30),
              topRight: Radius.circular(0),
              bottomRight: Radius.circular(30),
            ),
          ),
          color: Colors.yellow,
          elevation: 15,
          shadowColor: Colors.green,
        ),
      ),
      themeMode: ThemeMode.system,
      darkTheme: ThemeData(),
      ///
      ///
      debugShowCheckedModeBanner: false,
      title: 'My App Design',
      home: BottomNavBar(),
      ///nicher code er madhome Route kore page navigate kora jay..............
      /// ( /home ) this is route name-ey name button er push e call korte hoy........
      ///
      // initialRoute: '/bottomNav',
      // routes: {
      //   '/home'   : (context) => UserLoginMyApp(),
      //   '/travel' : (context) => AssignmentUi(),
      //   '/grid'   : (context) => GridViewClass1(),
      //   '/stack'  : (context) => Alert(),
      //   '/bottomNav' : (context) => BottomNavBar(),
      //   '/last'   : (context) => Module11Class1(),
      // },
      ///
      ///
    );
  }
}
//end of app.dart
//end of app.dart
//end of app.dart