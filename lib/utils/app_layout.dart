import '../utils/barrel_export.dart';

class AppLayout {

  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeight(double pixels) {
    double x = getScreenHeight()/pixels;  //800/200=4
    return getScreenHeight()/x;
  }

  static getWidth(double pixels) {
    double x = getScreenWidth()/pixels;  //800/200=4
    return getScreenWidth()/x;
  }
}