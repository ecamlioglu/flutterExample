import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Phases of Moon",
              style: TextStyle(fontStyle: FontStyle.italic)),
        ),
        body: Center(
          child: Moon(),
        ),
      ),
    );
  }
}

class Moon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.center,
      //margin: EdgeInsets.symmetric(vertical: 75),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "The Phases Of The Moon",
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("images/crescent.jpg")),
              ),
              Expanded(
                child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("images/firstquarter.jpg")),
              ),
              Expanded(
                child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("images/fullmoon.jpg")),
              ),
              Expanded(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("images/lastquarter.jpg"),
                ),
              ),
              Expanded(
                child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("images/finalcrescent.jpg")),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: 360,
                  height: 360,
                  child: FadeInImage.assetNetwork(
                      placeholder: "images/moonPhase.gif",
                      image:
                      "https://image.freepik.com/free-vector/dark-full-moon-night_1308-14383.jpg"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: FlatButton(
                  onPressed: () {
                    debugPrint("FlatButton tapped");
                  },
                  child: Icon(Icons.ac_unit, size: 48),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
