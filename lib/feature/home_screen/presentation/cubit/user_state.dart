import 'package:task1/feature/home_screen/data/model/user_response.dart';

class UserState {}
class UserInitState extends UserState{}
class UserLoadingState extends UserState{}
class UserErrorState extends UserState{
  String errorMsg;
  UserErrorState({required this.errorMsg});
}
class UserSuccessState extends UserState{
  List<UserResponse>? data;
  UserSuccessState({required this.data});
}