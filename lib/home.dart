import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String upComing = "https://api.b365api.com/v1/betfair/sb/upcoming?sport_id=1&token=71630-PGcJ1G10RiHuck";

  String event = "https://api.b365api.com/v1/betfair/sb/event?token=71630-PGcJ1G10RiHuck&event_id=28563496";

  String exInplay = "https://api.b365api.com/v1/betfair/ex/inplay?sport_id=4&token=71630-PGcJ1G10RiHuck";

  String exInplayEvent = "https://api.b365api.com/v1/betfair/ex/event?token=71630-PGcJ1G10RiHuck&event_id=28563496";


  Future<void> makeRequest(String numb) async {
    String inPlay = "https://api.b365api.com/v1/betfair/sb/inplay?sport_id=$numb&token=71630-PGcJ1G10RiHuck";

    var response = await http.get(inPlay, headers: {"Accept" : "application/json"});
    var data = jsonDecode(response.body);
    print(data["results"]);
  }
  @override
  Widget build(BuildContext context) {
    // makeRequest();
    return Scaffold(
      appBar: AppBar(
        title: Text("Betting"),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: RaisedButton(
                onPressed: () => makeRequest("2"),
                child: Text("Tennis"),
              ),
            ),
            Center(
              child: RaisedButton(
                onPressed: () => makeRequest("4"),
                child: Text("Cricket"),
              ),
            ),
            Center(
              child: RaisedButton(
                onPressed: () => makeRequest("1"),
                child: Text("Football"),
              ),
            ),
          ],
        ),
      )
    );
  }
}

