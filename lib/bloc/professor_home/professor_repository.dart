
import 'package:education_systems_mobile/core/bloc/base_repository.dart';
import 'package:education_systems_mobile/core/http/api_provider.dart';
import 'package:education_systems_mobile/core/http/api_response.dart';
import 'package:education_systems_mobile/core/http/api_result.dart';
import 'package:education_systems_mobile/core/http/network_exceptions.dart';
import 'package:education_systems_mobile/data/lesson/lesson_list_response.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';

class ProfessorRepository implements BaseRepository {
  ProfessorRepository({@required this.apiProvider});

  final ApiProvider apiProvider;
  final DateFormat formatter = DateFormat("yyyy-MM-dd", "tr");

  Future<ApiResult<LessonListResponse>> getProfessorLessons(int userId) async {
    try {
      final response = await apiProvider.post(
          "Lessons/get_proffesor_lessons", data: userId);
      LessonListResponse apiResponse = LessonListResponse.fromJson(response);
      if (apiResponse.lessons != null) {
        return ApiResult.success(data: apiResponse);
      }
      else
        return ApiResult.failure(error: NetworkExceptions.defaultError(
            "An unexpected error has occurred."));
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}