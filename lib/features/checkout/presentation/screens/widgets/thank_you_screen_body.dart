import 'package:checkout_app/features/checkout/presentation/screens/widgets/check_Icon.dart';
import 'package:checkout_app/features/checkout/presentation/screens/widgets/dash_line.dart';
import 'package:checkout_app/features/checkout/presentation/screens/widgets/thank_you_card.dart';
import 'package:flutter/material.dart';

class ThankYouScreenBody extends StatelessWidget {
  const ThankYouScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankYouCard(),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * .2 + 20,
            left: 20 + 10,
            right: 20 + 10,
            child: const DashLine(),
          ),
          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            top: -50,
            child: CheckIcon(),
          ),
        ],
      ),
    );
  }
}
