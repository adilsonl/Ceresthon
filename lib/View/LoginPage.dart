import 'package:ceresthon/View/MainPage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:
      Padding(padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
      child: Form(child:
      Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.1)),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Email"
            ),
          ),
          TextFormField(
            obscureText: true,
              decoration: InputDecoration(
              labelText: "Senha",
            ),
          ),
        
          RaisedButton(
            color: Colors.green[600],
            child: Text("Logar",style: TextStyle(color: Colors.white),),
            onPressed:(){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>MainPage())
              );
            })
        ],
      ), 
      )  ,)
     
    );
  }
}