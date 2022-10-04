import 'dart:math';
import 'package:get/get.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SpeechController extends GetxController {
  final acertos = 0.0.obs;
  final erros = 0.0.obs;
  final sideTxt = 'side'.obs;
  final sideImg = 0.obs;
  final teste = 0.obs;
  final listening = false.obs;
  final rotation = 0.obs;
  final turns = 1.obs;
  final size = 1.0.obs;
  final sideTxt1 = 'side'.obs;
  final animation = false.obs;

  var speechText = 'Resultado da Fala...'.obs;

  SpeechToText speechToText = SpeechToText();
  bool speechEnabled = false;
  String lastWords = '';

  @override
  void onInit() async {
    initSpeech();
    super.onInit();
    speechToText;
    imageSide();
  }

  resetStatus() {
    turns.value = 1;
    size.value = 1;
    acertos.value = 0;
    erros.value = 0;
    speechText.value = '';
    animation.value = false;
  }

  void initSpeech() async {
    speechEnabled = await speechToText.initialize();
  }

  Future<void> listen() async {
    await speechToText.listen(onResult: (val) {
      speechText.value = val.recognizedWords;
    });
    // Imagine that this function is fetching user info from another service or database.
    return Future.delayed(const Duration(seconds: 6), () => notListening());
  }

  void onSpeechResult(SpeechRecognitionResult result) async {
    lastWords = result.recognizedWords;
  }

  imageController() {
    speechText.value = '';
    imageSide();
    imageRotate();
  }

  voiceRecognition() {
    listen();
  }

  notListening() async {
    await speechToText.stop();
    if (speechText.value.contains(sideTxt.value) ||
        speechText.value.contains(sideTxt1.value)) {
      acertos.value = acertos.value + 1;
      if (turns.value < 8) {
        imageController();
      }
    } else {
      erros.value = erros.value + 1;
      if (turns.value < 8) {
        imageController();
      }
    }
  }

  imageRotate() async {
    sideImg.value = Random().nextInt(3);
    if (turns.value >= 1 && turns.value < 8) {
      size.value = size.value * 0.575;
      turns.value = turns.value + 1;
      voiceRecognition();
    }
    if (turns.value >= 8) {
      animation.value = false;
      await speechToText.stop();
      size.value = size.value * 0.575;
      turns.value = turns.value + 1;
    }
  }

  void imageSide() {
    if (sideImg.value == 0) {
      sideTxt.value = 'esquerda';
      sideTxt1.value = 'esquerdo';
      rotation.value = 2;
    } else if (sideImg.value == 1) {
      sideTxt.value = 'direita';
      sideTxt1.value = 'direito';
      rotation.value = 0;
    } else if (sideImg.value == 2) {
      sideTxt.value = 'cima';
      rotation.value = 3;
    } else if (sideImg.value == 3) {
      sideTxt.value = 'baixo';
      rotation.value = 1;
    }
  }
}
