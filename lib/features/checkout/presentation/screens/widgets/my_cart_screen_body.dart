import 'package:checkout_app/core/widgets/custom_button.dart';
import 'package:checkout_app/features/checkout/presentation/screens/widgets/cart_info_item.dart';
import 'package:checkout_app/features/checkout/presentation/screens/widgets/paymetn_methods_listView.dart';
import 'package:checkout_app/features/checkout/presentation/screens/widgets/total_price.dart';
import 'package:flutter/material.dart';

class MyCartScreenBody extends StatelessWidget {
  const MyCartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: Image.asset('assets/images/basket.png'),
          ),
          const OrderInfoItem(
            title: "Order Subtotal",
            value: "42.97\$",
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: "Discount",
            value: "0\$",
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: "Sipping",
            value: "8\$",
          ),
          const Divider(
            thickness: 2,
            height: 34, //instead making sizedbox with height 17
            color: Color(0xffc7c7c7),
          ),
          const TotalPrice(title: 'Total', value: r'$50.97'),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
              title: 'Complete Payment',
              onTap: () => showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  context: context,
                  builder: (context) => const PaymentMethodBottomSheet())
              // Navigator.of(context).push(
              // MaterialPageRoute(
              //   builder: (context) => const PaymentDetailsScreen(),
              // ),
              // ),
              ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 16,
          ),
          PaymentMethods(),
          SizedBox(
            height: 32,
          ),
          CustomButton(title: 'Continue')
        ],
      ),
    );
  }
}
