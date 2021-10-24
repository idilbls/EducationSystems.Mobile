import 'package:flutter/material.dart';
import 'package:education_systems_mobile/pages/constants.dart';

class WelcomeBottomNavigationBar extends StatefulWidget {
  const WelcomeBottomNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  _WelcomeBottomNavigationBarState createState() =>
      _WelcomeBottomNavigationBarState();
}

class _WelcomeBottomNavigationBarState
    extends State<WelcomeBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Text("Exit",
    //     style: TextStyle(color: kPrimaryColor, fontSize: 24, fontWeight: FontWeight.bold),),
    //   ],
    // );
    return Container(
      height: 60,
      color: Colors.white,
      child: InkWell(
        onTap: () => print('tap on close'),
        child: Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Column(
            children: <Widget>[
              Text('Exit',
          style: TextStyle(color: kPrimaryColor, fontSize: 24, fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}
