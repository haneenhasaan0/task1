import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/feature/home_screen/data/repo/user_repo.dart';
import 'package:task1/feature/home_screen/presentation/cubit/user_state.dart';


import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/feature/home_screen/data/repo/user_repo.dart';
import 'package:task1/feature/home_screen/presentation/cubit/user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitState());

  Future<void> getUsers() async {
    if (isClosed) return;

    emit(UserLoadingState());

    try {
      final response = await UserRepo.getUsers();

      if (isClosed) return;

      emit(UserSuccessState(data: response));
    } catch (e, stackTrace) {
      log('Cubit Error: $e');
      log('Stack Trace: $stackTrace');

      if (isClosed) return;

      emit(UserErrorState(errorMsg: e.toString()));
    }
  }
}
