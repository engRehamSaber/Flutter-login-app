import 'package:flutter/material.dart';
import 'package:login_design/page2.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: 750,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/photo_fooding.avif"),
                  fit: BoxFit.fill)),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 200),
                child: Text(
                  "Hi, Welcom TO \n Footing App",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 300),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return PageTwo();
                    }));
                  },
                  icon: Icon(
                    Icons.arrow_circle_right,
                    size: 70,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
