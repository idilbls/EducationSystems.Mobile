
import 'package:education_systems_mobile/pages/student/student_home_page.dart';
import 'package:education_systems_mobile/pages/welcome_page.dart';
import 'package:flutter/material.dart';


class Routes {
  static String rootPage = WelcomePage().routeName;
  static String homePage = StudentHomePage().routeName;

  static Map<String, WidgetBuilder> get() {
    Map<String, WidgetBuilder> routes = {
      homePage: (context) => StudentHomePage()
    };
    return routes;
  }
}
