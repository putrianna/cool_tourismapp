import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 200,
                      child: Image.asset(""),
                    ),
                    Container(
                      width: 200,
                      child: Image.asset(""),
                    ),
                    Container(
                      width: 200,
                      child: Image.asset(""),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
