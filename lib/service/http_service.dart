import 'dart:convert';
// import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:sports/model/inplay/inplay_tennis.dart';

class HttpService{

  Future<List<InPlayTennisMatches>> getInPlayTennisMatches() async {

    String inPlay = "https://api.b365api.com/v1/betfair/sb/inplay?sport_id=2&token=71630-PGcJ1G10RiHuck";

    Response res = await get(inPlay, headers: {"Accept" : "application/json"});

    if(res.statusCode == 200){
      List<dynamic> body = jsonDecode(res.body);
      print(body[0]);
    }
    
  }

}