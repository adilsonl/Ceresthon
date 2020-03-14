import 'package:ceresthon/Model/user.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  final User user;
  MainPage(this.user);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MainPage"),
      ),
      body: GridView.count(
        shrinkWrap: true,

        crossAxisCount: 2,
        children: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Adicionar Saldo",
                    style: TextStyle(color: Colors.brown),
                  ),
                  Icon(Icons.add)
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Visualizar Transações",
                    style: TextStyle(color: Colors.brown),
                  ),
                  Icon(Icons.list)
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
