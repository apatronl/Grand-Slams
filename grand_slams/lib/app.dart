import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grand_slams/utils/events_data.dart';
import 'package:grand_slams/widgets/event_row.dart';
import 'package:grand_slams/widgets/header.dart';

class GrandSlamsApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      title: 'Grand Slams',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: <Widget>[Header()]
            ..addAll(
              eventsData.map((eventData) => EventRow(eventData: eventData))),
        ),
      )
    );
  }
}