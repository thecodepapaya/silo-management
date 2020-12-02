import 'package:flutter/material.dart';
import 'package:silo_design_project/drawer.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Design Project', style: TextStyle(fontSize: 40)),
              SizedBox(height: 20),
              SizedBox(height: 20),
              Text('Topic: Silo Grain Management', style: TextStyle(fontSize: 32)),
              SizedBox(height: 20),
              Text('Group Members', style: TextStyle(fontSize: 26)),
              SizedBox(height: 20),
              Text('201851012 Mayank Ajmeri', style: TextStyle(fontSize: 20)),
              Text('201851025 Anuj Puri', style: TextStyle(fontSize: 20)),
              Text('201851029 Ashutosh Singh', style: TextStyle(fontSize: 20)),
              Text('201851065 Mayank Bazari', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
      drawer: SideDrawer(),
    );
  }
}
