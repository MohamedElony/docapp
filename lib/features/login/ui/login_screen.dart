import 'package:docapp/core/helpers/spacing.dart';
import 'package:docapp/core/themeing/styles.dart';
import 'package:docapp/core/widgets/app_text_button.dart';
import 'package:docapp/core/widgets/app_text_form_field.dart';
import 'package:docapp/features/login/ui/widgets/lib/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:docapp/features/login/ui/widgets/lib/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool isObsecuredText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24BlueBold),
                verticalSpace(8),
                Text(
                  '''We're excited to have you back, can't wait  to \n see what you've been up to since you \n last logged in.''',
                  style: TextStyles.font14GrayRegula,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      verticalSpace(36),
                      AppTextFormField(
                        hintText: 'Email',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
                      verticalSpace(18),
                      AppTextFormField(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            isObsecuredText = !isObsecuredText;
                            setState(() {});
                          },
                          child: Icon(
                            isObsecuredText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                        isObscureText: isObsecuredText,
                        hintText: 'Password',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                      verticalSpace(25),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13BlueRegular,
                        ),
                      ),
                      verticalSpace(40),
                      AppTextButton(
                        buttonText: 'Login',
                        onPressed: () {},
                        textStyle: TextStyles.font16whiteSemiBold,
                      ),
                      verticalSpace(16),
                     const TermsAndConditionsText(),
                     verticalSpace(40),
                     const DontHaveAccountText(),
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
