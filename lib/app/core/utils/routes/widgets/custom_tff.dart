import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTffWidget extends Container {
  final Function(String s)? onSaved;
  final Function(String s)? onValidate;
  final Function(String s)? onChanged;
  final TextEditingController? controller;
  final Key? key;
  final text,
      fontSize,
      focus,
      size,
      obscure,
      mask,
      maxLength,
      maxLines,
      marginTop,
      marginRight,
      marginLeft,
      check,
      icon,
      type,
      enabled,
      filled,
      initialValue,
      colorInitialValue,
      contentPadding,
      counterText,
      prefixText,
      prefixStyle,
      prefixIcon,
      enabledBorderColor,
      focusedBorderColor,
      errordBorderColor,
      disabledBorderColor,
      fErrordBorderColor,
      focusNode,
      bgColor,
      hintText,
      primaryColor;
  CustomTffWidget({
    this.focus = false,
    this.key,
    this.text,
    this.fontSize = 15.0,
    this.enabled = true,
    this.colorInitialValue = Colors.white,
    this.type,
    this.mask = const <TextInputFormatter>[],
    this.marginTop = 0.0,
    this.marginRight = 0.0,
    this.marginLeft = 0.0,
    this.controller,
    this.initialValue,
    this.icon,
    this.obscure = false,
    this.check = false,
    this.size,
    this.maxLength,
    this.counterText = '',
    this.maxLines = 1,
    this.filled = true,
    this.onChanged,
    this.onSaved,
    this.onValidate,
    this.contentPadding,
    this.prefixText,
    this.prefixStyle,
    this.prefixIcon,
    this.bgColor = Colors.black,
    this.focusNode,
    this.enabledBorderColor = Colors.transparent,
    this.disabledBorderColor = Colors.transparent,
    this.focusedBorderColor = Colors.transparent,
    this.errordBorderColor = Colors.red,
    this.fErrordBorderColor = Colors.red,
    this.primaryColor = Colors.white,
    // ignore: avoid_init_to_null
    this.hintText = null,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            top: marginTop, left: marginLeft, right: marginRight),
        width: size,
        child: Theme(
          data: ThemeData(
            primaryColor: primaryColor,
            errorColor: Colors.red,
          ),
          child: TextFormField(
            textInputAction: TextInputAction.done,
            autofocus: focus,
            key: key,
            focusNode: focusNode,
            inputFormatters: mask,
            maxLength: maxLength,
            initialValue: initialValue,
            style: TextStyle(color: colorInitialValue, fontSize: fontSize),
            enabled: enabled,
            controller: controller,
            obscureText: obscure,
            onSaved: (v) => onSaved!(v!),
            validator: (v) => onValidate!(v!),
            onChanged: (v) => onChanged!(v),
            cursorColor: Colors.white,
            maxLines: maxLines,
            keyboardType: type,
            decoration: new InputDecoration(
              counterText: counterText,
              contentPadding: contentPadding,
              prefixIcon: prefixIcon,
              prefixText: prefixText,
              prefixStyle: prefixStyle,
              filled: filled,
              fillColor: bgColor,
              errorStyle: TextStyle(
                color: Colors.red,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: enabledBorderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: focusedBorderColor),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: disabledBorderColor),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: errordBorderColor),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: fErrordBorderColor),
              ),
              labelStyle: TextStyle(color: Colors.white),
              counterStyle: TextStyle(color: Colors.white),
              suffixIcon: icon,
              labelText: text,
              hintText: hintText,
            ),
          ),
        ));
  }
}
