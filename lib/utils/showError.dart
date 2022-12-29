import 'package:flutter_easyloading/flutter_easyloading.dart';

void showError(String errorInfo) {
  EasyLoading.showError(errorInfo,
      duration: const Duration(minutes: 5), dismissOnTap: true);
}
