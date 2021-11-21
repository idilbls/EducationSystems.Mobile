
import 'package:education_systems_mobile/bloc/student_home/student_home_bloc.dart';
import 'package:education_systems_mobile/core/bloc/result_state.dart';
import 'package:education_systems_mobile/core/http/network_exceptions.dart';
import 'package:education_systems_mobile/core/security/auth_provider.dart';
import 'package:education_systems_mobile/core/security/base_auth.dart';
import 'package:education_systems_mobile/data/lesson/lesson_list_response.dart';
import 'package:education_systems_mobile/pages/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class StudentHomePage extends StatefulWidget {
  StudentHomePage({Key key, this.onSignOut}) : super(key: key);
  final VoidCallback onSignOut;
  final String routeName = "/student_home";

  @override
  _StudentHomePageState createState() => _StudentHomePageState();
}

class _StudentHomePageState extends State<StudentHomePage> {
  BaseUser _user;


  @override
  void didChangeDependencies() {
    AuthProvider.of(context).auth.currentUser().then((user) {
      _user = user;
      context.read<StudentHomeBloc>().getStudentList(_user.id);
    });
    super.didChangeDependencies();
  }

  void _loadLessonListById(BuildContext buildContext, int userId) async {
    context.read<StudentHomeBloc>().getStudentList(userId);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      body: BlocBuilder<StudentHomeBloc, ResultState<LessonListResponse>>(
        builder: (BuildContext context, ResultState<LessonListResponse> state) {
          return state.when(
              idle: () => Container(),
              loading: () => Center(child: CircularProgressIndicator()),
              data: (data) => _dataWidget(context, data),
              error: (error) => Center(child: Text(NetworkExceptions.getErrorMessage(error))));
        },
      ),
    );
  }
  _dataWidget(BuildContext buildContext, LessonListResponse data) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: data.lessons.length,
          itemBuilder: (BuildContext itemBuilderContext, int index){
            return Container(
              margin: EdgeInsets.only(right: 20, left: 20, bottom: 10, top: 10),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 0.3,
                borderOnForeground: true,
                child: _getLessonListItemView(buildContext, data.lessons[index], index),
              ),
            );
          },
        ),
      ),
    );
  }

  _getLessonListItemView(BuildContext buildContext, Lesson lesson, int itemIndex){
    Size size = MediaQuery.of(context).size;
    return new  ListTile(
      isThreeLine: true,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(lesson.code + "-" + lesson.title),
            ],
          ),
          Row(
            children: [
              Text(lesson.date.toString()),
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: kPrimaryColor,
                  ),
                  onPressed: (){},
                  child: Text("Attendance")),
            ],
          )
        ],
      ),
      subtitle: Text(""),
      onTap: (){
      },

    );
  }

}