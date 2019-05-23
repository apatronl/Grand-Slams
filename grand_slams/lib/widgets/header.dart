import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: EdgeInsets.only(top: 5.0, left: 15.0),
      child: Row(
        children: <Widget>[
          Text(
            '🎾 ',
            style: TextStyle(
              fontSize: 38.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            'Grand Slams',
            style: TextStyle(
              fontSize: 38.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}