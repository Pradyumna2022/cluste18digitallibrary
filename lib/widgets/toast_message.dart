import 'package:digital_library/global/color.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  void toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: backgroundColor,
      textColor: buttonTextColor,
    );
  }
}
