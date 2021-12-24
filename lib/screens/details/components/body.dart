import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(
          height: size.height * 0.4,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.4 - 50 ,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(""),
                  )
                ),
              )
            ],
            ),
        )
      ],


    );
  }
}
