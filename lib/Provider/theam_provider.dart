import 'package:flutter/cupertino.dart';

import '../Model/theam_model.dart';

class TheamProvider extends ChangeNotifier {
  TheamChange theamChange = TheamChange(isDark: false);

  void ChangeTheam() {
    theamChange.isDark = !theamChange.isDark;
    notifyListeners();
  }
}
