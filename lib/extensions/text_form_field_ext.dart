import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../assets/colors.dart';

extension TextFormFieldExtension on TextFormField {
  TextFormField idTextField(
      String labelText, String hintText, bool isValidIdNumber) {
    return TextFormField(
      key: key,
      controller: controller,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      cursorHeight: 19,
      style: const TextStyle(
        color: GodSufficientColors.text,
      ),
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: () {
              controller!.clear();
            },
            icon: const Icon(
              Icons.close,
              size: 16,
              color: GodSufficientColors.apricotAccent,
            )),
        labelText: labelText,
        hintText: hintText,
      ),
      validator: (value) {
        debugPrint(value);
        if (value!.isEmpty) {
          return "The ID number field is required.";
        }
        if (value.length > 13 || value.length < 13) {
          return "This is not a valid RSA ID number";
        }
        if (isValidIdNumber == false) {
          return "This is not a valid RSA ID number";
        }
        return null;
      },
    );
  }

  TextFormField defaultTextField(String labelText, String hintText) {
    return TextFormField(
      key: key,
      controller: controller,
      cursorHeight: 19,
      cursorColor: GodSufficientColors.text,
      validator: validator,
      style: const TextStyle(
        color: GodSufficientColors.text,
      ),
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: () {
              controller!.clear();
            },
            icon: const Icon(
              Icons.close,
              size: 16,
              color: GodSufficientColors.apricotAccent,
            )),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: GodSufficientColors.apricotAccent),
        ),
        labelText: labelText,
        labelStyle: const TextStyle(color: GodSufficientColors.text),
        hintText: hintText,
        hintStyle: const TextStyle(color: GodSufficientColors.apricotAccent),
      ),
    );
  }

  TextFormField descriptionTextField(String labelText, String hintText) {
    return TextFormField(
      key: key,
      controller: controller,
      keyboardType: TextInputType.multiline,
      maxLines: null,
      cursorHeight: 19,
      cursorColor: GodSufficientColors.text,
      validator: validator,
      style: const TextStyle(
        color: GodSufficientColors.text,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 40),
        suffixIcon: IconButton(
            onPressed: () {
              controller!.clear();
            },
            icon: const Icon(
              Icons.close,
              size: 16,
              color: GodSufficientColors.apricotAccent,
            )),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: GodSufficientColors.apricotAccent),
        ),
        labelText: labelText,
        labelStyle: const TextStyle(color: GodSufficientColors.text),
        hintText: hintText,
        hintStyle: const TextStyle(color: GodSufficientColors.apricotAccent),
      ),
    );
  }

  TextFormField phoneTextField(String labelText, String hintText) {
    return TextFormField(
      key: key,
      keyboardType: TextInputType.phone,
      controller: controller,
      cursorHeight: 19,
      cursorColor: GodSufficientColors.text,
      validator: validator,
      style: const TextStyle(
        color: GodSufficientColors.text,
      ),
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: () {
              controller!.clear();
            },
            icon: const Icon(
              Icons.close,
              size: 16,
              color: GodSufficientColors.apricotAccent,
            )),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: GodSufficientColors.apricotAccent),
        ),
        labelText: labelText,
        labelStyle: const TextStyle(color: GodSufficientColors.text),
        hintText: hintText,
        hintStyle: const TextStyle(color: GodSufficientColors.apricotAccent),
      ),
    );
  }

  Obx passwordTextField(String labelText, String hintText) {
    var showPassword = false.obs;

    return Obx(() {
      return TextFormField(
        key: key,
        controller: controller,
        obscureText: !showPassword.value,
        cursorHeight: 19,
        style: const TextStyle(
          color: GodSufficientColors.text,
        ),
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          suffixIcon: IconButton(
              onPressed: () {
                showPassword.toggle();
              },
              icon: showPassword.isFalse
                  ? const Icon(Icons.visibility_outlined)
                  : const Icon(Icons.visibility_off_outlined)),
        ),
        validator: validator,
      );
    });
  }
}
