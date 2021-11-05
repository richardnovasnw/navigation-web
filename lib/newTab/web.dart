import 'dart:html' as html;

import 'package:flutter/widgets.dart';
import 'dart:js' as js;

void tabMethod(BuildContext context) {
  n();
  html.window.open('https://flutter.dev/', "new tab");
}

void n() {
  js.context.callMethod('alertMessage', ['Opening new tab']);
}
