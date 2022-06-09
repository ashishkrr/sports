import 'package:flutter/cupertino.dart';

class Away{
  final String id;
  final String teamB;

  Away({
    @required this.id,
    @required this.teamB
  });

  factory Away.fromJson(Map<String, dynamic> json){
    return Away(
      id : json["id"],
      teamB: json["name"]
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.teamB;
    return data;
  }
}