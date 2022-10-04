import 'package:flutter/material.dart';
import 'package:get/get.dart';

class desafioApp extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Desafio'),
      ),
      body: Container(
        color: Colors.black38,
        child: Center(
          child: Text('Desafio'),
        ),
      ),
    );
  }
}
