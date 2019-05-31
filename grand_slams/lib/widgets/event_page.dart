import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EventPage extends StatelessWidget {
  final Map<String, dynamic> eventData;
  const EventPage({Key key, this.eventData}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    final eventDataList = [eventData['summary'], 'Visit website'];
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black87,
          
        ),
        title: new Image.asset(
          'assets/${eventData['logo']}', 
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0.0,
      ),
      body: Container(
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: Colors.grey,
          ),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: eventDataList.length,
          itemBuilder: (BuildContext context, int index) {
            switch (index) {

              case 0: {
                return Container(
                  child: Text(
                    eventDataList[index],
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  margin: new EdgeInsets.symmetric(
                    horizontal: 16.0, 
                    vertical: 16.0,
                  ),
                );
              }
              break;

              case 1: {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute<void>(
                      builder: (BuildContext context) {
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
                          ),
                        );
                      },
                    ));
                  },
                  child: Container(
                    child: Text(
                      eventDataList[index],
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    margin: new EdgeInsets.symmetric(
                      horizontal: 16.0, 
                      vertical: 16.0,
                    ),
                  ),
                );
              }
              break;
            }
          },
        ),
      ),
    );
  }
}