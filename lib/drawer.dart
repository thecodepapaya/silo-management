import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  final String home = '/';
  final String surface_volume = '/surface_volume';
  final String height = '/height';
  final String temp = '/temp';
  final String humidity = '/humidity';
  final String gas_density = '/gas_density';
  final String temp_humidity = '/temp_humidity';
  // final String gas_density = 'gas_density';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Text('Select Graph')),
            ListTile(
              title: Text(home),
              onTap: () => Navigator.of(context).pushReplacementNamed(home),
            ),
            ListTile(
              title: Text(surface_volume),
              onTap: () => Navigator.of(context).pushReplacementNamed(surface_volume),
            ),
            ListTile(
              title: Text(height),
              onTap: () => Navigator.of(context).pushReplacementNamed(height),
            ),
            ListTile(
              title: Text(temp),
              onTap: () => Navigator.of(context).pushReplacementNamed(temp),
            ),
            ListTile(
              title: Text(humidity),
              onTap: () => Navigator.of(context).pushReplacementNamed(humidity),
            ),
            ListTile(
              title: Text(gas_density),
              onTap: () => Navigator.of(context).pushReplacementNamed(gas_density),
            ),
            ListTile(
              title: Text(temp_humidity),
              onTap: () => Navigator.of(context).pushReplacementNamed(temp_humidity),
            ),
          ],
        ),
      ),
    );
  }
}
