
import 'package:app03/widgets/auth_form.dart';
import 'package:flutter/material.dart';



enum AuthType { login , register }

class AuthScreen extends StatelessWidget {
  final AuthType authType;

  const AuthScreen({Key key, this.authType}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
           children: <Widget>[
             Stack(
               children: <Widget>[
                 Container(
                     height: MediaQuery.of(context).size.height * 0.5,
                     decoration: BoxDecoration(
                         color: Colors.lightBlue,
                         borderRadius: BorderRadius.only(
                             bottomLeft: Radius.circular(50),
                             bottomRight: Radius.circular(50)
                         )
                     )
                 ),
                 Center(
                   child: Column(
                     children: <Widget>[
                       SizedBox(height: 60,),
                       Text("Hello!", style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                         fontWeight: FontWeight.w600,
                         letterSpacing: 1.2,
                       ),),
                       SizedBox(height: 25,),
                       Image.asset('assets/images/b1.png',height: 200,),
                     ],
                   ),
                 )
               ],
             ),

             AuthForm(authType: authType),
           ],
          ),
        ));
  }
}
