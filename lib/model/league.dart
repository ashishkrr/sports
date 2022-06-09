import 'package:flutter/cupertino.dart';

class League{
  final String id;
  final String leagueName;

  League({
    @required this.id,
    @required this.leagueName
  });

  factory League.fromJson(Map<String, dynamic> json){
    return League(
      id : json["id"],
      leagueName: json["name"]
    );
  }

   Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.leagueName;
    return data;
  }
}