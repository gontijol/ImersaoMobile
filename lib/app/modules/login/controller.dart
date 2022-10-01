import 'package:get/get.dart';

class LoginController extends GetxController {
  // final _password = ''.obs;
  final _login = ''.obs;

  @override
  void onInit() {
    super.onInit();
  }

  onChangedLogin(v) => _login.value = v;
}
