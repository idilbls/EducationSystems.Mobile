
import 'package:education_systems_mobile/bloc/student_home/student_repository.dart';
import 'package:education_systems_mobile/core/bloc/result_state.dart';
import 'package:education_systems_mobile/data/student/student.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StudentHomeBloc extends Cubit<ResultState<Student>> {
  StudentHomeBloc({this.repository})
      : assert(repository != null),
        super(Idle());
  final StudentRepository repository;


}