import 'package:ceresthon/Model/user.dart';
import 'package:ceresthon/Services/userServices.dart';
import 'package:flutter/material.dart';


class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
    TextEditingController emailController = TextEditingController();
    TextEditingController nomeController = TextEditingController();
    TextEditingController dataController = TextEditingController();
    TextEditingController cpfController = TextEditingController();
    TextEditingController telController = TextEditingController();
    TextEditingController senhaController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: emailController,
            decoration: InputDecoration(
              labelText: "Email"
            ),
          ),
          TextFormField(
            controller: nomeController,
            decoration: InputDecoration(
              labelText: "Nome"
            ),
          ),
          TextFormField(
            controller: dataController,
            decoration: InputDecoration(
              labelText: "Data Nascimento"
            ),
          ),
            TextFormField(
            controller: cpfController,
            decoration: InputDecoration(
              labelText: "CPF"
            ),
          ),
          TextFormField(
            controller: telController,
            decoration: InputDecoration(
              labelText: "Telefone"
            ),
          ),
          TextFormField(
            controller: senhaController,
            decoration: InputDecoration(
              labelText: "Senha"
            ),
          ),
            RaisedButton(
            color: Colors.green[600],
            child: Text("Cadastrar",style: TextStyle(color: Colors.white),),
            onPressed:()async{
              User user = User(cpf: cpfController.text,data: dataController.text,senha: senhaController.text,
              tel: telController.text, id: "",nome: nomeController.text,
              email: emailController.text);
              String docid = await UserServices.addUser(user);
              user.id = docid;
              await UserServices.editUser(user);
            })
          ],
        ),),
    );
  }
}