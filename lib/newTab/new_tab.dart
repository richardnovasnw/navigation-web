import 'package:flutter/widgets.dart';

import 'new_tab_stub.dart'
    // if (dart.library.io) 'mobile.dart'
    if (dart.library.html) 'web.dart';

class NewTab {
  void tab(BuildContext context) {
    tabMethod(context);
  }
}
