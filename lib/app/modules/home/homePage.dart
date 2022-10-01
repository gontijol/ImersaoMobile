import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:letscode/app/core/values/colors.dart';
import 'package:letscode/app/modules/home/widgets/modulos.dart';
import 'package:letscode/app/modules/login/login_page.dart';

class HomePage extends GetView {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        // color: Colors.white,
        // constraints: BoxConstraints(maxHeight: 100),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: light_blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(39),
                  bottomRight: Radius.circular(39),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Container(
                            //   height: 63.79,
                            //   width: 83,
                            //   decoration: BoxDecoration(
                            //       // color: Color.fromARGB(255, 14, 61, 126),
                            //       // image: DecorationImage(
                            //       //   fit: BoxFit.scaleDown,
                            //       //   colorFilter: ColorFilter.mode(
                            //       //       Colors.white.withOpacity(0.1),
                            //       //       BlendMode.lighten),
                            //       //   image: AssetImage(
                            //       //       'assets/splash/logo_white.png'),
                            //       // ),
                            //       ),
                            // ),
                            // SizedBox(width: 10),
                            Text(
                              'IMERSÃO MOBILE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'APP CANIVETE',
                        style: TextStyle(
                            color: default_yellow,
                            fontSize: 32,
                            fontWeight: FontWeight.normal),
                      ),
                      // LinearPercentIndicator(
                      //   barRadius: Radius.circular(11),
                      //   backgroundColor: light_blue,
                      //   linearGradient: LinearGradient(
                      //       begin: Alignment.centerLeft,
                      //       end: Alignment.centerRight,
                      //       colors: [
                      //         Colors.white,
                      //         Colors.white,
                      //         Colors.white,
                      //         Colors.white,
                      //         Colors.white,
                      //         light_blue,
                      //       ]),

                      //   width: 335.0,
                      //   lineHeight: 14.0,
                      //   percent: 0.99,
                      //   // backgroundColor: Colors.grey.withAlpha(50),
                      //   // progressColor: Colors.white,
                      // ),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  WidgetModulo(),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Get.to(() => LoginPage()),
              style: ElevatedButton.styleFrom(
                backgroundColor: light_blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text(
                'VOLTAR',
                style: TextStyle(fontSize: 20),
              ),
            )
            // SingleChildScrollView(
            //   scrollDirection: Axis.vertical,
            //   child: Column(children: <Widget>[WidgetModulo(), WidgetModulo()]),
            // )
            // SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
