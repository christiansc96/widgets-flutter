import 'package:flutter/material.dart';
import 'package:widgets_flutter/home/widgets/home-drawer.dart';

class FourExample extends StatelessWidget {
  final String title;
  const FourExample({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? ""),
      ),
      drawer: DrawerApp(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Image.asset("assets/christiansc96.png")),
          ],
        ),
      ),
    );
  }
}
