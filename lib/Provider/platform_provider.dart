import 'package:flutter/cupertino.dart';
import 'package:platformconverter/Model/changeplatform.dart';

class PlatformProvider extends ChangeNotifier {
  ChangePlatform changePlatform = ChangePlatform(isios: false);

  void ConvertPlatform() {
    changePlatform.isios = !changePlatform.isios;
    notifyListeners();
  }
}
