import 'package:docdoc_app/core/helper/extensions.dart';
import 'package:docdoc_app/core/routing/routes.dart';
import 'package:docdoc_app/core/theming/app_colors.dart';
import 'package:docdoc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';


class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      }, 
       style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity, 65),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      
      child:  Text('Get Started',style: TextStyles.font16WhiteSemiBold,),
      
      );
  }
}