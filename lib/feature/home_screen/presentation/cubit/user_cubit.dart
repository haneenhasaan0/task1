import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/feature/home_screen/data/model/user_response.dart';
import 'package:task1/feature/home_screen/data/repo/user_repo.dart';
import 'package:task1/feature/home_screen/presentation/cubit/user_state.dart';


import 'dart:developer';


class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitState());

  Future<UserResponse?> getUsers() async {
    emit(UserLoadingState());

    try {
      final response = await UserRepo.getUsers();


      emit(UserSuccessState(data: response));
    } catch (e) {
      log('Cubit Error: $e');

      if (isClosed) return null;

      emit(UserErrorState(errorMsg: e.toString()));
    }
    return null;
  }
}
