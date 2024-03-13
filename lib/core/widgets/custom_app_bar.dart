import 'package:checkout_app/core/helper/styles.dart';
import 'package:flutter/material.dart';

AppBar customAppBar({String? title}) {
  return AppBar(
    leading: const Icon(
      Icons.arrow_back,
      color: Colors.black,
    ),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      title ?? '',
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
  );
}
