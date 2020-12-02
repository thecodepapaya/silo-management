import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:silo_design_project/drawer.dart';

class ShowGraph extends StatelessWidget {
  ShowGraph({
    @required this.url,
    @required this.title,
  });

  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebviewScaffold(
        url: url,
        appBar: AppBar(
          title: Text(title),
        ),
        withZoom: true,
        withLocalStorage: true,
        hidden: true,
        initialChild: Container(
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
      drawer: SideDrawer(),
    );
  }
}
