import 'package:education_systems_mobile/pages/widget/bottom_navigation_bar.dart';
import 'package:education_systems_mobile/pages/widget/general_button.dart';
import 'package:education_systems_mobile/pages/widget/rounded_input_field.dart';
import 'package:education_systems_mobile/pages/widget/rounded_password_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:education_systems_mobile/pages/constants.dart';

class ProfessorLoginPage extends StatefulWidget {
  ProfessorLoginPage({Key key, this.onSignIn}) : super(key: key);
  final VoidCallback onSignIn;
  final String routeName = "/professor_login";


  @override
  _ProfessorLoginPageState createState() => _ProfessorLoginPageState();
}

class _ProfessorLoginPageState extends State<ProfessorLoginPage> {

  GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  String _email;
  String _password;
  final FocusNode _emailFocus = new FocusNode();
  final FocusNode _passwordFocus = new FocusNode();


  void _handleNext(BuildContext context) async {
    _emailFocus.unfocus();
    FocusScope.of(context).requestFocus(_passwordFocus);
  }

  void _handleSubmit() async {
    // validateAndSubmit();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          child: Center(
            child: Container(
              padding: EdgeInsets.only(top: 40, right: 20, left: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    "Welcome to Education Systems",
                  textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: size.height * 0.03,),
                  Text(
                    "You are a few steps away from tracking your progress in class!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Image.asset(
                    "assets/images/home_image.jpg",
                    width: size.width * 0.7,
                  ),
                  RoundedInputField(
                    text: "Professor ID",
                    focusNode: _emailFocus,
                    onFieldSubmitted: (value) => _handleNext(context),
                    validator: (val) => val.isEmpty ? "Email alanı gereklidir." : null,
                    onSaved: (val) => _email = val,
                  ),
                  RoundedPasswordField(
                    text: "Password",
                    focusNode: _passwordFocus,
                    onFieldSubmitted: (value) => _handleSubmit,
                    validator: (val) => val.isEmpty ? "Password alanı gereklidir." : null,
                    onSaved: (val) => _password = val,
                  ),
                  GeneralButton(
                    text: "Login",
                    press: (){},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: WelcomeBottomNavigationBar(),
    );
  }
}
