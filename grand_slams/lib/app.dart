import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grand_slams/utils/events_data.dart';
import 'package:grand_slams/widgets/event_row.dart';
import 'package:grand_slams/widgets/header.dart';

class GrandSlamsApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return MaterialApp(
      title: 'Grand Slams',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(child: 
          AppBar(
            //title: Text('Grand Slams', style: TextStyle(color: Colors.black),),
            backgroundColor: Colors.white,
            brightness: Brightness.light,
            elevation: 0.0,
          ),
          preferredSize: Size.fromHeight(0.0)
        ),
        body: ListView(
          children: <Widget>[Header()]
            ..addAll(
              eventsData.map((eventData) => EventRow(eventData: eventData))),
        ),
      )
    );
  }
}