import 'package:flutter/cupertino.dart';

class Home{
  final String id;
  final String teamA;

  Home({
    @required this.id,
    @required this.teamA
  });

  factory Home.fromJson(Map<String, dynamic> json){
    return Home(
      id : json["id"],
      teamA: json["name"]
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.teamA;
    return data;
  }
}