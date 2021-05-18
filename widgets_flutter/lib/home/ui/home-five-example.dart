import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widgets_flutter/home/widgets/home-drawer.dart';

class FiveExample extends StatelessWidget {
  final String title;
  const FiveExample({Key key, @required this.title}) : super(key: key);

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
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              padding: EdgeInsets.all(10),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                style: GoogleFonts.robotoSlab(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              padding: EdgeInsets.all(10),
              child: TextField(
                keyboardType: TextInputType.number,
                style: GoogleFonts.robotoSlab(
                  fontSize: 20,
                ),
              ),
            ),
            RaisedButton(
              onPressed: () => print("Button"),
              child: Text(
                "Send",
                style: GoogleFonts.robotoSlab(
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
