import 'package:flutter/material.dart';

class EventRow extends StatelessWidget {
  final Map<String, dynamic> eventData;
  const EventRow({Key key, this.eventData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 300.0,
      margin: const EdgeInsets.only(
        top: 8.5,
        bottom: 8.5,
        left: 15.0,
        right: 15.0,
      ),
      color: Colors.transparent,
      child: new Container(
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.all(const Radius.circular(40.0)),
          image: DecorationImage(
            image: new AssetImage(
              'assets/${eventData['logo']}',
            ),
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}