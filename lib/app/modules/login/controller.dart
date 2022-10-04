import 'package:get/get.dart';

class LoginController extends GetxController {
  // final _password = ''.obs;
  final login = ''.obs;

  @override
  void onInit() {
    super.onInit();
  }

  onChangedLogin(v) => login.value = v;
}
