import 'package:ceresthon/Model/user.dart';
import 'package:ceresthon/Services/userServices.dart';
import 'package:flutter/material.dart';


class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
        child: Column(
          children: <Widget>[
            TextFormField(
            decoration: InputDecoration(
              labelText: "Email"
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Nome"
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Data Nascimento"
            ),
          ),
            TextFormField(
            decoration: InputDecoration(
              labelText: "CPF"
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Telefone"
            ),
          ),
            RaisedButton(
            color: Colors.green[600],
            child: Text("Logar",style: TextStyle(color: Colors.white),),
            onPressed:()async{
              User user = User(cpf: '',data: "",senha: "",tel: "", id: "",nome: "");
              UserServices.addUser(user);
            })
          ],
        ),),
    );
  }
}