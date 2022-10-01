import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letscode/app/modules/speech_to_text/controller.dart';

class ReferenceImg extends GetView<SpeechController> {
  const ReferenceImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Obx(() => Text(controller.speechText.value)),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.only(
                      bottom: 10, top: 10, left: 3, right: 2),
                  child: RotatedBox(
                    quarterTurns: controller.rotation.value,
                    // =
                    //     Random().nextInt(3),
                    child: Image(
                      image: const AssetImage('reference.png'),
                      height: (MediaQuery.of(context).size.height * 0.7) *
                          controller.size.value,
                      width: (MediaQuery.of(context).size.width * 0.7) *
                          controller.size.value,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
