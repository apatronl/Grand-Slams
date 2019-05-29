import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EventPage extends StatelessWidget {
  final Map<String, dynamic> eventData;
  const EventPage({Key key, this.eventData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        title: Text(
          eventData['name'],
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0.0,
      ),
      body: Center(
        child: WebView(
          initialUrl: eventData['website'],
          javascriptMode: JavascriptMode.unrestricted,
        ),
        // child: Text(
        //   eventData['summary'],
        // ),
      ),
    );
  }
}