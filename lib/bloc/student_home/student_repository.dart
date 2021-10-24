
import 'package:education_systems_mobile/core/bloc/base_repository.dart';
import 'package:education_systems_mobile/core/http/api_provider.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';

class StudentRepository implements BaseRepository {
  StudentRepository({@required this.apiProvider});

  final ApiProvider apiProvider;
  final DateFormat formatter = DateFormat("yyyy-MM-dd", "tr");

}