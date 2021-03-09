import 'package:flutter/material.dart';
import 'screen/intro_screen.dart';
import 'screen/auth_screen.dart';
import 'home.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Color(0xfff2f9fe),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[200]),
          borderRadius: BorderRadius.circular(25),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[200]),
          borderRadius: BorderRadius.circular(25),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[200]),
          borderRadius: BorderRadius.circular(25),
        ),
      ),
        primarySwatch: Colors.blue,

      ),
      home: IntroScreen (),
      routes:{
        'home': (context) => HomeScreen(),
        'login' : (context) =>AuthScreen(authType: AuthType.login),
        'register' : (context) =>AuthScreen(authType: AuthType.register),
      },

    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("AL-HERAFY"),
      ),
      body: null,

    );
  }
}
