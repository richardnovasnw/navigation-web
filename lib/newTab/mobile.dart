import 'dart:io';

import 'package:flutter/material.dart';

void tabMethod(BuildContext context) {
  ScaffoldMessenger.of(context)
      .showSnackBar(const SnackBar(content: Text('Unsupported')));

  print('ON MOBILE');
}
