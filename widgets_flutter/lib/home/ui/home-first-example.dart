import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widgets_flutter/home/widgets/home-drawer.dart';

class FirstExample extends StatelessWidget {
  final String title;
  const FirstExample({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title ?? "",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      drawer: DrawerApp(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Georgia Font Family",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontFamily: "Georgia",
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              'This is Google Fonts',
              style: GoogleFonts.lato(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
