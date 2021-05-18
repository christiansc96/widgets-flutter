import 'package:flutter/material.dart';

class ExampleCard extends StatelessWidget {
  final String name;
  const ExampleCard({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 140,
      margin: EdgeInsets.only(
        top: 15,
        left: 15,
        right: 15,
      ),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(
              5.0,
              5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(
              0.0,
              0.0,
            ),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: Center(
        child: Text(
          name ?? " ",
          style: TextStyle(
            fontSize: 15,
            color: Colors.black.withOpacity(0.6),
          ),
          textAlign: TextAlign.center,
          softWrap: true,
        ),
      ),
    );
  }
}
