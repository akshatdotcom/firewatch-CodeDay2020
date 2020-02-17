import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  TextEditingController _controller;
  String city = '';
  String country = '';
  double temp = 54.2;
  String text = 'Med-High Probability of Fire.';
  void getData(String cityIn) async {
    Response response = await get('http://api.openweathermap.org/data/2.5/weather?q=$cityIn&appid=9ef2c5a269c9908469b248a628cb0452');
    String data = response.body;
    temp = jsonDecode(data)['main']['temp'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'City',
            ),
            onSubmitted: (String value) async {
              city = value;
              getData(city);
              /*if (city != "" && country != "") {
                getData(city);
                await showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Results!'),
                      content: Text('Medium-High Probability of fire.'),
                      actions: <Widget>[
                        FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              }*/
            },
          ),
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Country',
            ),
            onSubmitted: (String value) async {
              country = value;
              if (city != "" && country != "") {
                await showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Results!'),
                      content: Text('Temp is $temp. Medium-High Probability of fire.'),
                      actions: <Widget>[
                        FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

/*
GoogleMapController myMapController;
  static const LatLng _mainLocation = const LatLng(25.69893, 32.6421);


GoogleMap(
        initialCameraPosition: CameraPosition(
          target: _mainLocation,
          zoom: 10.0,
        ),
        mapType: MapType.normal,
        onMapCreated: (controller) {
          setState(() {
            myMapController = controller;
          });
        },
      ),
*/
