import 'package:flutter/material.dart';
import 'package:widgets_flutter/home/widgets/home-drawer.dart';

class ThirdExample extends StatelessWidget {
  final String title;
  const ThirdExample({Key key, @required this.title}) : super(key: key);

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
            SizedBox(
              height: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              padding: EdgeInsets.all(10),
              child: Text(
                title ?? "",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black.withOpacity(0.6),
                  fontFamily: "Georgia",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
