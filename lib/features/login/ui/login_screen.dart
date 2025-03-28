import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theming/app_colors.dart';
import 'package:docdoc_app/core/theming/styles.dart';
import 'package:docdoc_app/core/widgets/app_text_button.dart';
import 'package:docdoc_app/core/widgets/app_text_form_field.dart';
import 'package:docdoc_app/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:docdoc_app/features/login/ui/widgets/terms_and_condition_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final formKey = GlobalKey<FormState>();

  bool isObsecureText = true;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 30.w,vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back",style: TextStyles.font24BlueBold,),
                verticalSpacing(10),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpacing(35),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      AppTextFormField(hintText: 'Email',),
                      verticalSpacing(20),
                      AppTextFormField(hintText: 'Password',
                      isObscureText: isObsecureText,
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            isObsecureText = !isObsecureText;
                          });
                        },
                         icon: Icon(isObsecureText?Icons.visibility_off:Icons.visibility,size: 24,color: AppColors.mainBlue,),),
                      ),
                      verticalSpacing(20),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        
                        child: TextButton(onPressed: (){}, child: Text('Forgot Password?',style: TextStyles.font14BlueSemiBold,),)),
                      verticalSpacing(40),
                      AppTextButton(
                        buttonText: "Login",
                         textStyle: TextStyles.font18WhiteSemiBold,
                          onPressed: (){},
                          ),
                          Divider(thickness: 1,color: AppColors.lightGray,height: 100,),
                      verticalSpacing(40),
                      TermsAndConditionText(),
                      verticalSpacing(70),

                      DontHaveAccountText(),

                      
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