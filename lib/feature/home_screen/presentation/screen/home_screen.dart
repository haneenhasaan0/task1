import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/core/app_colors/app_colors.dart';
import 'package:task1/core/app_style/app_style.dart';
import 'package:task1/feature/home_screen/presentation/wdget/custom_form_field.dart';
import 'package:task1/feature/home_screen/presentation/wdget/users.dart';

import '../../../../core/show_snak_bar/show_snack_bar.dart';
import '../cubit/user_cubit.dart';
import '../cubit/user_state.dart';
import '../wdget/shimmer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Users", style: AppStyle.semiBold40DarkGreen),
                      Text("10 user", style: AppStyle.regular14Grey),
                    ],
                  ),
                  CustomFormField(),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("All Users", style: AppStyle.regular14Grey),
                      Icon(Icons.people, size: 16, color: AppColors.greyColor),
                    ],
                  ),BlocConsumer<UserCubit, UserState>(
          listener: (context, state) {
            if (state is UserErrorState) {
              showToast(context, state.errorMsg);
            }
          },
          builder: (context, state) {
            if (state is UserLoadingState) {
              return ShimmerLoading(width: double.infinity);
            }
            if (state is UserSuccessState) {
              return
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {

                      String? initials = state.data?[index].name
                          .trim()
                          .split(' ')
                          .map((word) => word[0])
                          .join();
                      return Users(name: state.data?[index].name ?? "",
                        email: state.data?[index].email ?? "",summary: initials??"",);
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        indent: 4,
                        endIndent: 4,
                        color: AppColors.greyColor,
                      );
                    },

                    itemCount: state.data?.length ?? 2,
                  ),
                );
            }return SizedBox();})],

        ),
      ),
    );
  }
}
