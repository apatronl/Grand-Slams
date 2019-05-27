import 'package:flutter/material.dart';
import 'package:grand_slams/widgets/event_page.dart';

class EventRow extends StatelessWidget {
  final Map<String, dynamic> eventData;
  const EventRow({Key key, this.eventData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(eventData['name']);
        Navigator.push(context, MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return EventPage(eventData: this.eventData);
              },
            )
          );
      },
      child: new Container(
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
            boxShadow: [new BoxShadow(
              color: Colors.grey,
              blurRadius: 8.0,
            )],
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
      ),
    );
  }
}