import 'package:ceresthon/Model/user.dart';
import 'package:ceresthon/Services/userServices.dart';
import 'package:ceresthon/View/MainPage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
    TextEditingController senhaController = TextEditingController();
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
            controller: emailController,
            decoration: InputDecoration(
              labelText: "Email"
            ),
          ),
          TextFormField(
            controller: senhaController,
            obscureText: true,
              decoration: InputDecoration(
              labelText: "Senha",
            ),
          ),
        
          RaisedButton(
            color: Colors.green[600],
            child: Text("Logar",style: TextStyle(color: Colors.white),),
            onPressed:() async {
              User user = await UserServices.logar(emailController.text ,senhaController.text);
              if(user==null){
                showDialog(context: context,
                builder: (context)=>
                Dialog(
                  child: Card(
                    child:Container(
                      height: MediaQuery.of(context).size.height*0.3,
                      child:  Center(
                        child: Text("Verifique os dados",style: TextStyle(color: Colors.red),),
                      ),
                    ),
                  ),
                )
                );
              }else{
                  Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>MainPage(user))
              );
              }
            
            })
        ],
      ), 
      )  ,)
     
    );
  }
}