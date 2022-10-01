import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:letscode/app/core/values/colors.dart';
import 'package:letscode/app/modules/login/login_page.dart';

class ConfirmPage extends GetView {
  const ConfirmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                dark_blue,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                light_blue,
              ],
            ),
          ),
          // color: Colors.white,
          // constraints: BoxConstraints(maxHeight: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 275,
                        width: 275,
                        child: Container(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Digite o código de confirmação que você recebeu no email:",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(height: 30),
                      Container(
                        // color: Colors.red,
                        width: MediaQuery.of(context).size.width * 0.50,
                        height: MediaQuery.of(context).size.height * 0.070,
                        child: TextFormField(
                          cursorColor: dark_blue,
                          //  maxLines: null,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[400],
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: dark_blue),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelText: 'Código',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),

                      // Center(
                      //     child: Image(
                      //   height: MediaQuery.of(context).size.height * 0.50,
                      //   width: MediaQuery.of(context).size.width * 0.50,
                      //   image: AssetImage('assets/splash/logo.png'),
                      // ))

                      ElevatedButton(
                        onPressed: () => Get.to(() => LoginPage()),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: dark_blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                        ),
                        child: Text(
                          'ENVIAR',
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
