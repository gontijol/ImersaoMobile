import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:letscode/app/core/values/colors.dart';
import 'package:letscode/app/modules/create_account/widgets/HelpButton.dart';
import 'package:letscode/app/modules/help_page/help_page.dart';
import 'package:letscode/app/modules/home/homePage.dart';
import 'package:letscode/app/modules/login/widgets/AppleBtn1.dart';
import 'package:letscode/app/modules/login/widgets/GoogleBtn1.dart';

import '../create_account/create_account.dart';

class LoginPage extends GetView {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      //     appBar: AppBar(
      //   title: const Text('VISION - Exemplo Teste'),
      //   centerTitle: true,
      // ))
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Login'),
        //   backgroundColor: dark_blue,
        //   centerTitle: true,
        // ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                dark_blue,
                dark_blue,
                dark_blue,
                Colors.white,
                Colors.white,
                Colors.white,
              ],
            ),
          ),
          // color: Colors.white,
          // constraints: BoxConstraints(maxHeight: 100),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Center(
                      child: Container(
                    width: 200,
                    height: 250,
                    child: Image(
                      height: MediaQuery.of(context).size.height * 0.45,
                      width: MediaQuery.of(context).size.width * 0.45,
                      image: AssetImage('assets/splash/lets_code_login.png'),
                    ),
                  )),
                  Container(
                    child: Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.70,
                        height: MediaQuery.of(context).size.height * 0.070,
                        child: TextFormField(
                          cursorColor: dark_blue,
                          //  maxLines: null,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[300],
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: dark_blue),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(15)),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.70,
                        height: MediaQuery.of(context).size.height * 0.070,
                        child: TextFormField(
                          cursorColor: dark_blue,
                          //  maxLines: null,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[300],
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: dark_blue),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            labelText: 'Senha',
                            labelStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(padding: EdgeInsets.all(10)),
                          TextButton(
                            onPressed: () => Get.to(() => CreateAccount()),
                            child: Text(
                              'Cadastrar',
                              style: TextStyle(
                                color: dark_blue,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 40,
                            child: FloatingActionButton(
                              onPressed: () => Get.to(() => HomePage()),
                              child: const Icon(Icons.arrow_forward),
                              backgroundColor: dark_blue,
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(10)),
                        ],
                      ),
                    ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppleBtn1(onPressed: () {}),
                      GoogleBtn1(onPressed: () {}),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Esqueci a senha',
                      style: TextStyle(
                        color: dark_blue,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // HelpButton(
                      //     gradient: LinearGradient(
                      //       begin: Alignment.topLeft,
                      //       end: Alignment.bottomRight,
                      //       colors: [
                      //         dark_blue,
                      //         light_blue,
                      //       ],
                      //     ),
                      //     icon: const Icon(Icons.help),
                      //     onPressed: () {}),
                      AnimatedContainer(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.20,
                        curve: Curves.fastOutSlowIn,
                        duration: const Duration(seconds: 3),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          // shape: BoxShape.circle,
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              dark_blue,
                              light_blue,
                            ],
                          ),
                        ),
                        child: HelpButton(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                dark_blue,
                                // Colors.white,
                                // Colors.white,
                                // Colors.white,
                                // Colors.white,
                                // Colors.white,
                                // Colors.white,
                                // Colors.white,
                                // Colors.white,
                                // Colors.white,
                                // Colors.white,
                                // Colors.white,
                                light_blue,
                              ],
                            ),
                            icon: Icon(
                              Icons.help,
                              color: Colors.white,
                            ),
                            onPressed: () => Get.to(() => HelpPage())),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
