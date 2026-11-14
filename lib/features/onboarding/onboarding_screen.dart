import 'package:docapp/core/themeing/styles.dart';
import 'package:docapp/features/onboarding/widgets/doc_image_with_text.dart';
import 'package:docapp/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:docapp/features/onboarding/widgets/get_stated_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                DocLogoAndName(),

                SizedBox(height: 30.h),
                DocImageWithText(),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        textAlign: TextAlign.center,
                        style: TextStyles.font13Gray,
                      ),
                       SizedBox(height: 30.h,),
                      GetStatedButton(),

                    
                    ],
                  ),
                ),
                
                   
              ],
            ),
          ),
        ),
      ),
    );
  }
}
