// @dart = 2.9
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:pdf_generator/web_view_container.dart';

class Home extends StatelessWidget {
  final _links = ['http://localhost:8103/students'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _links.map((link) => _urlButton(context, link)).toList(),
          ),
        ),
      ),
    );
  }

  Widget _urlButton(BuildContext context, String url) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: FlatButton(
        color: Theme.of(context).primaryColor,
        padding: const EdgeInsets.symmetric(
          horizontal: 50.0,
          vertical: 15.0,
        ),
        child: const Text("STUDENT INFO"),
        onPressed: () => _handleURLButtonPress(context, url),
      ),
    );
  }

  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}
