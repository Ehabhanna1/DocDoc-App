import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theming/styles.dart';
import 'package:docdoc_app/features/onBoarding/ui/widgets/doc_logo_and_named.dart';
import 'package:docdoc_app/features/onBoarding/ui/widgets/doctor_image_and_text.dart';
import 'package:docdoc_app/features/onBoarding/ui/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(top: 30.h,bottom: 30.h),
            child: Column(
              children: [

               const DocLogoAndNamed(),
               verticalSpacing(30),
               const DoctorImageAndText(),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 30.w),
                 child: Column(
                  children: [
                    Text('Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    textAlign: TextAlign.center,
                    style: TextStyles.font12GrayRegular,
                    
                    ),
                    verticalSpacing(30),

                    const GetStartedButton(),



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