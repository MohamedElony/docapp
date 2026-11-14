import 'package:docapp/core/themeing/colors.dart';
import 'package:docapp/core/themeing/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DocImageWithText extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/logo_background.svg'),

        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withValues(alpha: 0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),

          child: Image.asset('assets/images/doc.png'),
        ),
        Positioned(
          bottom: 25.h,
          left: 0,
          right: 0,
       
            child:
              Text(
                'Best Doctor \n  Appointment App',
                textAlign: TextAlign.center,
                style: TextStyles.font32BlueBold.copyWith(height: 1.4),
              ),
      
      
        ),
      ],
    );
  }
}
