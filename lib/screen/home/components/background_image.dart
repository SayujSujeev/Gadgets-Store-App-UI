import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      child: Image(
        height: size.height * 0.55,
        fit: BoxFit.cover,
        image: AssetImage('assets/images/headmain.jpg'),
      ),
    );
  }
}
