import 'package:ceresthon/Model/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserServices{

  static Future<String> addUser(User user) async{
    
   var doc  = await Firestore.instance.collection('users').add(user.toJson());
  return doc.documentID;
  }

  static Future editUser(User user) async{
    await Firestore.instance.collection("users").document(user.id).updateData(user.toJson());
  }

  static Future<User> logar(String email, String senha) async{
    User  user;
    var docs = await Firestore.instance.collection("users").where('email',isEqualTo: email).where("senha",isEqualTo: senha).getDocuments();
    if (docs.documents.isNotEmpty){
      User usua = User.fromJson(docs.documents.first.data) ;
      user=usua;
    }
    return user;
  }

}