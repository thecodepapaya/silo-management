import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:silo_design_project/show_graph.dart';

import 'home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Silo Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (_) => MyHomePage(title: 'Status Report'),
        '/surface_volume': (_) => ShowGraph(
            url: 'https://thingspeak.com/apps/matlab_visualizations/372077&dynamic=true',
            title: 'Surface Volume'),
        '/height': (_) => ShowGraph(
            url:
                'https://thingspeak.com/channels/1200020/charts/1?api_key=N4ZAAQO7R6LE9RI3&dynamic=true',
            title: 'Height'),
        '/temp': (_) => ShowGraph(
            url: 'https://thingspeak.com/channels/1205362/charts/1?api_key=WPG5E1SG7H2WCSHZ',
            title: 'Temperature'),
        '/humidity': (_) => ShowGraph(
            url:
                'https://thingspeak.com/channels/1205362/charts/2?api_key=WPG5E1SG7H2WCSHZ&dynamic=true',
            title: 'Humidity'),
        '/gas_density': (_) => ShowGraph(
            url: 'https://thingspeak.com/apps/matlab_visualizations/379029&dynamic=true',
            title: 'Gas Density'),
        '/temp_humidity': (_) => ShowGraph(
            url: 'https://thingspeak.com/apps/matlab_visualizations/372094&dynamic=true',
            title: 'Temp-Humidity'),
      },
    );
  }
}
