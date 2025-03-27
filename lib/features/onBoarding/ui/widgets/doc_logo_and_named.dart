import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DocLogoAndNamed extends StatelessWidget {
  const DocLogoAndNamed({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        SvgPicture.asset('assets/svgs/docdoc_logo.svg'),
         horizontalSpacing(10),

         Text("DocDoc",style: TextStyles.font24BlackBold),



      ],
    );
  }
}