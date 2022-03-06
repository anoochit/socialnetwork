import 'package:get/get.dart';

class AppController extends GetxController {
  // navigation bar index
  int _navbar_index = 0;

  // set current navbar index
  setCurrentNavbarIndex(int value) {
    _navbar_index = value;
    update();
  }

  // get current navbar index
  getCurrentNavbarIndex() {
    return _navbar_index;
  }
}
