import 'dart:async';

import 'package:flutter/material.dart';
import 'main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
        () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Image(
        image: AssetImage('Assets/Images/paradice_logo.png'),
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu")),
      body: Center(
        child: Column(children: [
          Text("Bienvenu sur Hexagames", style: TextStyle(color: Colors.black, fontSize: 20)),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/route1');
              },
              child: Text('Dés'))
        ]),
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key, required this.title});
  final String title;
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter = 1;
    });
  }

  void _incrementCountera() {
    setState(() {
      if (_counter <= 1) {
      } else {
        _counter -= 1;
      }
    });
  }

  void _incrementCounterb() {
    setState(() {
      if (_counter <= 9) {
      } else {
        _counter -= 10;
      }
    });
  }

  void _incrementCounterc() {
    setState(() {
      _counter += 1;
    });
  }

  void _incrementCounterd() {
    setState(() {
      _counter += 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.green, BlendMode.color),
            child: Image.asset('Assets/Images/paradice_logo.png'),
          ),
          Padding(padding: EdgeInsets.all(8)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ElevatedButton(
                onPressed: _incrementCounter,
                child: const Text(
                  'DÉ 6',
                  style: TextStyle(color: Colors.green),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.white),
                  elevation: MaterialStateProperty.resolveWith((states) => 8),
                ),
              ),
              ElevatedButton(
                onPressed: _incrementCounter,
                child: const Text(
                  'DÉ 10',
                  style: TextStyle(color: Colors.green),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.white),
                  elevation: MaterialStateProperty.resolveWith((states) => 8),
                ),
              ),
              ElevatedButton(
                onPressed: _incrementCounter,
                child: const Text(
                  'DÉ 20',
                  style: TextStyle(color: Colors.green),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.white),
                  elevation: MaterialStateProperty.resolveWith((states) => 8),
                ),
              ),
              ElevatedButton(
                onPressed: _incrementCounter,
                child: const Text(
                  'DÉ 100',
                  style: TextStyle(color: Colors.green),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.white),
                  elevation: MaterialStateProperty.resolveWith((states) => 8),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ElevatedButton(
                onPressed: _incrementCounterb,
                child: const Text(
                  '-10',
                  style: TextStyle(color: Colors.green),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.white),
                  elevation: MaterialStateProperty.resolveWith((states) => 8),
                ),
              ),
              ElevatedButton(
                onPressed: _incrementCountera,
                child: const Text(
                  '-1',
                  style: TextStyle(color: Colors.green),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.white),
                  elevation: MaterialStateProperty.resolveWith((states) => 8),
                ),
              ),
              ElevatedButton(
                onPressed: _incrementCounter,
                child: const Text(
                  '1',
                  style: TextStyle(color: Colors.green),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.white),
                  elevation: MaterialStateProperty.resolveWith((states) => 8),
                ),
              ),
              ElevatedButton(
                onPressed: _incrementCounterc,
                child: const Text(
                  '+1',
                  style: TextStyle(color: Colors.green),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.white),
                  elevation: MaterialStateProperty.resolveWith((states) => 8),
                ),
              ),
              ElevatedButton(
                onPressed: _incrementCounterd,
                child: const Text(
                  '+10',
                  style: TextStyle(color: Colors.green),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.white),
                  elevation: MaterialStateProperty.resolveWith((states) => 8),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(8)),
          Row(
            children: [
              const Text(
                'Nombre de dés :',
                style: TextStyle(fontSize: 20),
              ),
              Padding(padding: EdgeInsets.only(left: 5)),
              Text(
                '$_counter',
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(10)),
          Row(
            children: [Text('Les résultats :')],
          ),
          Padding(padding: EdgeInsets.all(5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('Nombre de faces: 1'),
                  Text('Nombre de faces: 2'),
                  Text('Nombre de faces: 3'),
                ],
              ),
              Column(
                children: [
                  Text('Nombre de faces: 4'),
                  Text('Nombre de faces: 5'),
                  Text('Nombre de faces: 6'),
                ],
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('Moyenne des dés :'),
                ],
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.casino),
      ),
    );
  }
}
