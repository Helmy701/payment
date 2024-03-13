import 'package:checkout_app/core/widgets/custom_app_bar.dart';
import 'package:checkout_app/features/checkout/presentation/screens/widgets/thank_you_screen_body.dart';
import 'package:flutter/material.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Transform.translate(
          offset: Offset(0, -16), child: const ThankYouScreenBody()),
    );
  }
}
