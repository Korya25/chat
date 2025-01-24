import 'package:chat_ap_p/core/theme/themes/text_styles.dart';
import 'package:flutter/material.dart';

class IntroduceScreen extends StatelessWidget {
  const IntroduceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Introduce 1 Page',
              style: TextStyles.neutral900(context),
            ),
            Text(
              'Introduce 1 Page',
            ),
          ],
        ),
      ),
    );
  }
}
