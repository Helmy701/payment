import 'dart:developer';

import 'package:checkout_app/core/widgets/custom_button.dart';
import 'package:checkout_app/features/checkout/presentation/screens/thank_you_screen.dart';
import 'package:checkout_app/features/checkout/presentation/screens/widgets/custom_credit_card.dart';
import 'package:checkout_app/features/checkout/presentation/screens/widgets/paymetn_methods_listView.dart';
import 'package:flutter/material.dart';

class PaymentDatailsScreenBody extends StatefulWidget {
  const PaymentDatailsScreenBody({super.key});

  @override
  State<PaymentDatailsScreenBody> createState() =>
      _PaymentDatailsScreenBodyState();
}

class _PaymentDatailsScreenBodyState extends State<PaymentDatailsScreenBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      const SliverToBoxAdapter(
        child: PaymentMethods(),
      ),
      SliverToBoxAdapter(
        child: CustomCreditCard(
          autovalidateMode: autovalidateMode,
          formKey: formKey,
        ),
      ),
      SliverFillRemaining(
        hasScrollBody: false,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 12.0,
              left: 16,
              right: 16,
            ),
            child: CustomButton(
              title: 'Payment',
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  log('paymetn');
                } else {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ThankYouScreen()));
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
          ),
        ),
      )
    ]);
  }
}
