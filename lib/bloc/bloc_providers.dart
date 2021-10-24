

import 'package:education_systems_mobile/bloc/student_home/student_home_bloc.dart';
import 'package:education_systems_mobile/bloc/student_home/student_repository.dart';
import 'package:education_systems_mobile/core/http/api_provider.dart';
import 'package:education_systems_mobile/pages/student/student_home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocProviders {
  static List<BlocProvider> get({ApiProvider apiProvider}) {
    return [
      BlocProvider<StudentHomeBloc>(
        create: (BuildContext context) {
          return StudentHomeBloc(repository: new StudentRepository(apiProvider: apiProvider));
        },
        child: StudentHomePage(),
      ),

    ];
  }
}
