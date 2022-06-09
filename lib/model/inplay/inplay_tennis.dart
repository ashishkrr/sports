import 'package:flutter/cupertino.dart';
import 'package:sports/model/away.dart';
import 'package:sports/model/home.dart';
import 'package:sports/model/league.dart';

class InPlayTennisMatches{

  final League nameOfTournament;
  final String matchId;
  final Home teamA;
  final Away teamB;

  InPlayTennisMatches({
    @required this.nameOfTournament,
    @required this.matchId,
    @required this.teamA,
    @required this.teamB,
  });

  factory InPlayTennisMatches.fromJson(Map<String, dynamic> json){
    return InPlayTennisMatches(
      nameOfTournament: json["league"],
      matchId: json["id"], 
      teamA: json["home"], 
      teamB: json["away"]
    );
  }

}