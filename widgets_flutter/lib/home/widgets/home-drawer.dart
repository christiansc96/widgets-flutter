import 'package:flutter/material.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 9,
      child: _buildMenu(context),
    );
  }

  Widget _buildMenu(BuildContext context) {
    return Column(children: <Widget>[
      DrawerHeader(
        child: Container(),
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage('assets/christiansc96.png'),
          ),
        ),
      ),
      Expanded(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          children: <Widget>[
            _buildMenuOption(context),
            SizedBox(height: 100),
          ],
        ),
      ),
      Container(
          margin: EdgeInsets.only(
            bottom: 10,
          ),
          child: Text(
            "©2021 @christiansc96",
            style: TextStyle(
              fontSize: 15.5,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ))
    ]);
  }

  Widget _buildMenuOption(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.phone_android_outlined),
      title: Text(
        'This app is the demo of the talk "What are widgets in flutter?',
        style: TextStyle(
          fontSize: 16.2,
          fontWeight: FontWeight.w600,
        ),
      ),
      onTap: () {
        print('This app is the demo of the talk "What are widgets in flutter?');
      },
    );
  }
}
