import 'package:flutter/material.dart';

void main() {
  runApp(const HomePageLayout());
}

class HomePageLayout extends StatelessWidget {
  const HomePageLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.teal.shade200,
          body: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 150, bottom: 10),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Ron.jpeg'),
                  radius: 70.0,
                ),
              ),
              const Text(
                "Ron A. Barzilay",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32.0,
                    color: Colors.black38,
                    fontFamily: "AbrilFatface",
                    letterSpacing: 1.5),
              ),
              const Text(
                "Web, iOS & Android Developer",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.white,
                    fontFamily: 'SourceSansPro',
                    letterSpacing: 2),
              ),
              const SizedBox(
                height: 40.0,
                width: 200,
                child: Divider(
                  color: Colors.black26,
                  thickness: 1.4,
                ),
              ),
              Card(
                color: Colors.lightBlueAccent,
                // מסגרת
                margin: EdgeInsets.fromLTRB(58, 0, 55, 0),
                // תיבה
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: const [
                      Icon(Icons.contact_phone_rounded,
                          color: Colors.lightGreenAccent),
                      SizedBox(width: 50),
                      Text(
                        "+972-58-400-7557",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'SourceSansPro',
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Card(
                  color: Colors.lightBlueAccent,
                  margin: EdgeInsets.fromLTRB(58, 0, 55, 0),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: const [
                        Icon(Icons.email_outlined,
                            size: 29, color: Colors.lightGreenAccent),
                        SizedBox(
                          width: 33,
                        ),
                        Text("ron.barzilay@gmail.com",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'SourceSansPro'))
                      ],
                    ),
                  ))
            ],
          )),
        ));
  }
}
