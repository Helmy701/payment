import 'package:checkout_app/core/widgets/custom_app_bar.dart';
import 'package:checkout_app/features/checkout/presentation/screens/widgets/my_cart_screen_body.dart';
import 'package:flutter/material.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "My Cart"),
      body: const MyCartScreenBody(),
    );
  }
}
