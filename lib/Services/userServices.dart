import 'package:ceresthon/Model/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserServices{

  static Future<String> addUser(User user) async{
    
   var doc  = await Firestore.instance.collection('users').add(user.toJson());
  return doc.documentID;
  }

}