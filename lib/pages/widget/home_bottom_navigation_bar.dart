import 'package:flutter/material.dart';
import 'package:education_systems_mobile/pages/constants.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeBottomNavigationBar extends StatefulWidget {
  const HomeBottomNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  _HomeBottomNavigationBarState createState() =>
      _HomeBottomNavigationBarState();
}

class _HomeBottomNavigationBarState extends State<HomeBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 60,
      color: Colors.white,
      child: Column(
        children: [
          Divider(
            color: kPrimaryColor,
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: size.width * 0.5,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.0, top: 10.0),
                    child: Column(
                      children: <Widget>[

                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: FaIcon(
                                  FontAwesomeIcons.signOutAlt,
                                  color: kPrimaryColor,
                                  size: 15,
                                ),
                              ),
                              TextSpan(
                                text: 'Back',
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              VerticalDivider(
                color: kPrimaryColor,
                width: 10,
              ),
              Container(
                width: size.width * 0.3,
                child: InkWell(
                  onTap: () {
                    SystemNavigator.pop();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.0, top: 10.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Exit',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
