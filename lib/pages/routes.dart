import 'package:education_systems_mobile/pages/professor/professor_login_page.dart';
import 'package:education_systems_mobile/pages/student/student_home_page.dart';
import 'package:education_systems_mobile/pages/student/student_login_page.dart';
import 'package:education_systems_mobile/pages/welcome_page.dart';
import 'package:flutter/material.dart';


class Routes {
  static String rootPage = WelcomePage().routeName;
  static String homePage = StudentHomePage().routeName;
  static String professorLoginPage = ProfessorLoginPage().routeName;
  static String studentLoginPage = StudentLoginPage().routeName;

  static Map<String, WidgetBuilder> get() {
    Map<String, WidgetBuilder> routes = {
      homePage: (context) => StudentHomePage(),
      professorLoginPage: (context) => ProfessorLoginPage(),
      studentLoginPage: (context) => StudentLoginPage()
    };
    return routes;
  }
}
