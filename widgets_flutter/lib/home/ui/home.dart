import 'package:flutter/material.dart';
import 'package:widgets_flutter/home/ui/home-first-example.dart';
import 'package:widgets_flutter/home/ui/home-five-example.dart';
import 'package:widgets_flutter/home/ui/home-four-example.dart';
import 'package:widgets_flutter/home/ui/home-second-example.dart';
import 'package:widgets_flutter/home/ui/home-third-example.dart';
import 'package:widgets_flutter/home/widgets/home-drawer.dart';
import 'package:widgets_flutter/home/widgets/home-example-card.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "What are widgets in Flutter?",
        ),
      ),
      drawer: DrawerApp(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(10),
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: [
              GestureDetector(
                child: ExampleCard(
                  name: "First Example: Adding styles to our texts",
                ),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FirstExample(
                        title: "First Example: Adding styles to our texts",
                      ),
                    ),
                  )
                },
              ),
              GestureDetector(
                child: ExampleCard(
                  name: "Second Example: Adding background color",
                ),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondExample(
                        title: "Second Example: Adding background color",
                      ),
                    ),
                  )
                },
              ),
              GestureDetector(
                child: ExampleCard(
                  name: "Third Example: Adding borders",
                ),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdExample(
                        title: "Third Example: Adding borders",
                      ),
                    ),
                  )
                },
              ),
              GestureDetector(
                child: ExampleCard(
                  name: "Four Example: Showing images",
                ),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FourExample(
                        title: "Four Example: Showing images",
                      ),
                    ),
                  )
                },
              ),
              GestureDetector(
                child: ExampleCard(
                  name: "Five Example: Adding inputs and buttons",
                ),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FiveExample(
                        title: "Five Example: Adding inputs and buttons",
                      ),
                    ),
                  )
                },
              ),
            ],
          ),
        )),
      ),
    );
  }
}
