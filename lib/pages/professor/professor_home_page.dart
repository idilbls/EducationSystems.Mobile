
import 'package:education_systems_mobile/bloc/student_home/student_home_bloc.dart';
import 'package:education_systems_mobile/core/bloc/result_state.dart';
import 'package:education_systems_mobile/core/http/network_exceptions.dart';
import 'package:education_systems_mobile/data/student/student.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ProfessorHomePage extends StatefulWidget {
  ProfessorHomePage({Key key, this.onSignOut}) : super(key: key);
  final VoidCallback onSignOut;
  final String routeName = "/professor_home";

  @override
  _ProfessorHomePageState createState() => _ProfessorHomePageState();
}

class _ProfessorHomePageState extends State<ProfessorHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: BlocBuilder<StudentHomeBloc, ResultState<Student>>(
        builder: (BuildContext context, ResultState<Student> state) {
          return state.when(
              idle: () => Scaffold(
                backgroundColor: Colors.green,
                body: Container(),
              ),
              loading: () => Center(child: CircularProgressIndicator()),
              data: (data) => Text("Professor Home Page"),
              error: (error) => Center(child: Text(NetworkExceptions.getErrorMessage(error))));
        },
      ),
    );
  }
}