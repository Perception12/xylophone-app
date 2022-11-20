// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BaseBody extends StatelessWidget {
  final Widget child;
  const BaseBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return child;
    } else {
      return SafeArea(child: child);
    }
  }
}
