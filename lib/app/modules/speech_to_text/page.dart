// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letscode/app/core/values/colors.dart';
import 'package:letscode/app/modules/speech_to_text/controller.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class appCanivete1 extends GetView<SpeechController> {
  const appCanivete1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Speech to Text'),
          centerTitle: true,
          backgroundColor: dark_blue,
        ),
        body: Obx(() => controller.turns.value < 8
            ?
            // Obx(() => Text(controller.speechText.value)),
            Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RotatedBox(
                          quarterTurns: controller.rotation.value,
                          // =
                          //     Random().nextInt(3),
                          child: Image(
                            image: const AssetImage('reference.png'),
                            height: (MediaQuery.of(context).size.height * 0.5) *
                                controller.size.value,
                            width: (MediaQuery.of(context).size.width * 0.5) *
                                controller.size.value,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Acertos: ${controller.acertos.value}'),
                    Text('Erros: ${controller.erros.value}'),
                    ElevatedButton(
                        onPressed: () {
                          controller.resetStatus();
                        },
                        child: const Text('Reiniciar Teste!'))
                  ],
                ),
              )),
        floatingActionButton: Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Text(
                    " ${controller.speechText.value}",
                    style: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14.76,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  controller.animation.value == false
                      ? FloatingActionButton(
                          backgroundColor: dark_blue,
                          onPressed: () {
                            controller.voiceRecognition();
                            controller.animation.value = true;
                          },
                          tooltip: 'Listen',
                          child: Icon(Icons.mic, color: Colors.white),
                        )
                      : LoadingAnimationWidget.stretchedDots(
                          color: dark_blue,
                          size: 50,
                        )
                ],
              ),
            ],
          ),
        ));
  }
}
