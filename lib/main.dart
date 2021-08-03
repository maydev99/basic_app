import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BasicApp',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),

      home: MyHomePage(
        title: 'BasicAppHomePage'
      ),
    );
  }

}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Text(
              'Button Count:',
              style: TextStyle(fontSize: 20.0),
            ),
            Text('$_counter',
            style: TextStyle(fontSize: 50.0),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                FloatingActionButton(
                  onPressed: _decrement,
                  tooltip: 'Decrement',
                  child: Icon(Icons.remove),
                ),

                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ),


              ],
            ),
          ],
        ),

      ),



    );
  }

}