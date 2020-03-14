import 'package:ceresthon/Model/investment.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class userServices{

  static Future<String> addInvestment (Investment investment) async{
  
    var doc = await Firestore.instance.collection('investments').add(investment.toJson());
    return doc.documentID;
  
  }
}