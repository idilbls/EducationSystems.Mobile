

import 'package:education_systems_mobile/bloc/professor_home/professor_home_bloc.dart';
import 'package:education_systems_mobile/bloc/professor_home/professor_repository.dart';
import 'package:education_systems_mobile/bloc/professor_sections/professor_sections_bloc.dart';
import 'package:education_systems_mobile/bloc/student_home/student_home_bloc.dart';
import 'package:education_systems_mobile/bloc/student_home/student_repository.dart';
import 'package:education_systems_mobile/core/http/api_provider.dart';
import 'package:education_systems_mobile/pages/professor/professor_home_page.dart';
import 'package:education_systems_mobile/pages/professor/professor_lesson_sections_page.dart';
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
      BlocProvider<ProfessorHomeBloc>(
        create: (BuildContext context) {
          return ProfessorHomeBloc(repository: new ProfessorRepository(apiProvider: apiProvider));
        },
        child: ProfessorHomePage(),
      ),
      BlocProvider<ProfessorSectionsBloc>(
        create: (BuildContext context) {
          return ProfessorSectionsBloc(repository: new ProfessorRepository(apiProvider: apiProvider));
        },
        child: ProfessorLessonSectionsPage(),
      ),
    ];
  }
}
