import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void tabMethod(BuildContext context) {
  ScaffoldMessenger.of(context)
      .showSnackBar(const SnackBar(content: Text('Unsupported')));
}
