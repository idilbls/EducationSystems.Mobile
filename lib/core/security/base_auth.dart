import 'package:education_systems_mobile/core/http/response.dart';

abstract class BaseAuth {
  Future<BaseUser> currentUser();
  Future<Response> signIn(String number, String password);
  Future<Response> getUser(int id);
  Future<void> signOut();
}

abstract class BaseUser {
  int id;
  String number;
}
