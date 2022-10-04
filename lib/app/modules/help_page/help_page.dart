import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:letscode/app/core/values/colors.dart';
import 'package:letscode/app/modules/create_account/widgets/HelpButton.dart';
import 'package:letscode/app/modules/login/login_page.dart';

class HelpPage extends GetView {
  const HelpPage({Key? key}) : super(key: key);

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

        //   title: const Text('Ajuda'),
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
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                // light_blue,
              ],
            ),
          ),
          // color: Colors.white,
          // constraints: BoxConstraints(maxHeight: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Center(
                          child: Image(
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: MediaQuery.of(context).size.width * 0.45,
                        image: AssetImage('assets/splash/lets_code_login.png'),
                      )),
                      Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height * 0.35,
                            width: MediaQuery.of(context).size.width * 0.75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: dark_blue.withOpacity(0.36),
                              border: Border.all(
                                color: light_blue,
                                width: 5,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 50.0, right: 50.0),
                            child: Text(
                              'App feito para o evento Imersão Mobile 2022',
                              style: TextStyle(fontSize: 25),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
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
                                  color: Colors.grey.withOpacity(0.36),
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
                                  Icons.home,
                                  color: Colors.white,
                                ),
                                onPressed: () => Get.to(() => LoginPage())),
                          ),
                        ],
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
