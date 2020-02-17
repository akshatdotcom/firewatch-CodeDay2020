import 'package:flutter/material.dart';

bool aTitle = false;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

const String acresBurned = '12,350,000';
const String peopleDied = '27';
const String animalsKilled = '1,250,000,000';

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: /*GestureDetector(
        onTap: () {
          setState(() {
            aTitle = true;
          });
        },
        child: */ListView(
          padding: EdgeInsets.symmetric(vertical: 40.0),
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'firewatch',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red[900],
                  fontSize: 60.0,
                  letterSpacing: 7.0,
                ),
              ),
            ),
            Container(
              //duration: Duration(seconds: 2),
              padding: EdgeInsets.symmetric(vertical: 40.0),
              width: 200.0,
              height: 200.0,
              child: Image(
                alignment: Alignment.center,
                image: NetworkImage(
                    'https://cdn.clipart.email/67aedb3c945c2d678a2ac47e0276186d_clipart-fire-icon_1687-2400.png'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 40.0),
              child: Image(
                alignment: Alignment.center,
                image: NetworkImage(
                    'https://static01.nyt.com/images/2020/01/31/world/10australialetter139-1/31ozf-fires-kangaroo-mobileMasterAt3x-v2.jpg'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 40.0),
              child: Column(
                children: <Widget>[
                  Text(
                    acresBurned,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 50.0,
                    ),
                  ),
                  Text(
                    'acres of land burned',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Text(
                    peopleDied,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 50.0,
                    ),
                  ),
                  Text(
                    'people killed',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Text(
                    animalsKilled,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 50.0,
                    ),
                  ),
                  Text(
                    'animal lives ended',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 30.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 40.0),
              child: Image(
                alignment: Alignment.center,
                image: NetworkImage(
                    'https://ichef.bbci.co.uk/news/410/cpsprodpb/14644/production/_110242538_gettyimages-1194815171.jpg'),
              ),
            ),
          ],
        ),
      //),
    );
  }
}
