import 'package:flutter/material.dart';

class DashLine extends StatelessWidget {
  const DashLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          28,
          (index) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Container(
                    color: const Color(0xFFB8B8B8),
                    height: 2,
                  ),
                ),
              )),
    );
  }
}
