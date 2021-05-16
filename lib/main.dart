import 'package:flutter/material.dart';
import 'package:trips_app/trips_pages.dart';

void main() => runApp(TripsApp());

class TripsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (BuildContext context, Widget widget) {
        Widget error = Text('...rendering error...');
        if (widget is Scaffold || widget is Navigator)
          error = Scaffold(body: Center(child: error));
        ErrorWidget.builder = (FlutterErrorDetails errorDetails) => error;
        return widget;
      },
      home: TripsPages(),
    );
  }
}
