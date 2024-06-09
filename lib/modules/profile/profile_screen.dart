import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendy_trade/core/di/dependency_injection.dart';
import 'package:trendy_trade/core/helpers/extensions.dart';
import 'package:trendy_trade/core/themes/colors_manager.dart';
import 'package:trendy_trade/core/widgets/appbars.dart';
import 'package:trendy_trade/modules/profile/logic/profile_cubit.dart';
import 'package:trendy_trade/modules/profile/logic/profile_state.dart';

import '../../core/helpers/shared_preferences_helper.dart';
import '../../core/routing/routes.dart';
import '../../core/themes/text_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileCubit>()..emitProfileStates(),
      child: Scaffold(
        appBar: AppBars.auth(
            context: context, withBackButton: false, title: "Profile"),
        body: Padding(
          padding: EdgeInsets.all(16.r),
          child: BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) {
              return state is Loading
                  ? const Center(child: CircularProgressIndicator())
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Profile Details',
                            style: TextStyles.size20BlackW600),
                        SizedBox(height: 20.h),
                        Container(
                          height: 50.h,
                          padding: EdgeInsets.all(10.r),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Row(
                            children: [
                              Text("Name", style: TextStyles.size20BlackW600),
                              SizedBox(width: 20.w),
                              Text(
                                  context
                                          .read<ProfileCubit>()
                                          .userData
                                          .userName ??
                                      '',
                                  style: TextStyles.size14BlackW400),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Container(
                          height: 50.h,
                          padding: EdgeInsets.all(10.r),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Row(
                            children: [
                              Text("Email", style: TextStyles.size20BlackW600),
                              SizedBox(width: 20.w),
                              Text(
                                  context.read<ProfileCubit>().userData.email ??
                                      '',
                                  style: TextStyles.size14BlackW400),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Container(
                          height: 50.h,
                          padding: EdgeInsets.all(10.r),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Row(
                            children: [
                              Text("Role", style: TextStyles.size20BlackW600),
                              SizedBox(width: 20.w),
                              Text(
                                  context.read<ProfileCubit>().userData.role ??
                                      '',
                                  style: TextStyles.size14BlackW400),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorsManager.primary,
                            minimumSize: Size(double.infinity, 56.h),
                          ),
                          onPressed: () async {
                            await SharedPrefHelper.clearAllSecuredData();
                            if (context.mounted) {
                              context.pushNamedAndRemoveUntil(
                                Routes.loginScreen,
                                predicate: (route) => false,
                              );
                            }
                          },
                          child:
                              Text('Logout', style: TextStyles.size20WhiteW600),
                        ),
                      ],
                    );
            },
          ),
        ),
      ),
    );
  }
}
