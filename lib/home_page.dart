import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page')
      ),
      body: Center(
        child:
        Container(
          height: 100,
          width: 100,
          color: Colors.blue,
          child: Text('Welcome To home page!!'),
        ),
      ),
    );
  }
}