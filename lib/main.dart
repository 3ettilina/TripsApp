import 'package:flutter/material.dart';
import 'ui/place/header/header_app_bar.dart';
import 'package:trips_app/ui/place/place.dart';

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
      home: Scaffold(
          body: Stack(
        children: [Place(), HeaderAppBar()],
      )),
    );
  }
}
