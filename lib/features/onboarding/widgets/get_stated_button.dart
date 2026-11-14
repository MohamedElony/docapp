import 'package:docapp/core/helpers/extentions.dart';
import 'package:docapp/core/routing/routes.dart';
import 'package:docapp/core/themeing/colors.dart';
import 'package:docapp/core/themeing/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStatedButton extends StatelessWidget {
  const GetStatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(MyAppColor.primaryColor),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(Size(double.infinity, 50.h)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),

      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      child: Text('Get Started', style: TextStyles.font16whiteSemiBold),
    );
  }
}
