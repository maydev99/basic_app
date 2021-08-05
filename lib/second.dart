import 'package:basic_app/listy.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Second Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: ElevatedButton(
                onPressed: () {
                Navigator.pop(context);
                },

                child: Text('Go Back!'),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(32.0),
            child: ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListScreen()),);
            }, child: Text('See List')),
          )
        ],
      ),
    );
  }

}