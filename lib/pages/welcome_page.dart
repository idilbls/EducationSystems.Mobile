import 'package:flutter/material.dart';
import 'package:education_systems_mobile/pages/constants.dart';

class WelcomePage extends StatelessWidget {
  final String routeName = "/welcome";

  const WelcomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Center(child: Text("Welcome Page")),
    );
  }

}


