import 'package:fire_watch/map.dart';
import 'package:flutter/material.dart';
import 'twitter_page.dart';
import 'home.dart';
import 'map.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(index: _currentIndex, children: <Widget>[
          TwitterPage(),
          HomePage(),
          MapPage(),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('Live Feed'),
            icon: Icon(Icons.chat),
          ),
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('Predictions'),
            icon: Icon(Icons.flash_on),
          ),
        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index; 
          });
        },
        currentIndex: _currentIndex,
      ),
    );
  }
}
