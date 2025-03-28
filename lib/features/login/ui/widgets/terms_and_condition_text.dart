import 'package:docdoc_app/core/theming/styles.dart';
import 'package:flutter/widgets.dart';

class TermsAndConditionText extends StatelessWidget {
  const TermsAndConditionText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
           TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyles.font13GrayRegular,
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: TextStyles.font14DarkBlueMedium,
          ),
          TextSpan(
            text: ' and',
            style: TextStyles.font13GrayRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: TextStyles.font14DarkBlueMedium,
          ),
        ],

      ),
      );
  }
}