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
        color: GSColorData.text,
      ),
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: () {
              controller!.clear();
            },
            icon: const Icon(
              Icons.close,
              size: 16,
              color: GSColorData.accent,
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
      cursorColor: GSColorData.text,
      validator: validator,
      style: const TextStyle(
        color: GSColorData.text,
      ),
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: () {
              controller!.clear();
            },
            icon: const Icon(
              Icons.close,
              size: 16,
              color: GSColorData.accent,
            )),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: GSColorData.accent),
        ),
        labelText: labelText,
        labelStyle: const TextStyle(color: GSColorData.text),
        hintText: hintText,
        hintStyle: const TextStyle(color: GSColorData.accent),
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
      cursorColor: GSColorData.text,
      validator: validator,
      style: const TextStyle(
        color: GSColorData.text,
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
              color: GSColorData.accent,
            )),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: GSColorData.accent),
        ),
        labelText: labelText,
        labelStyle: const TextStyle(color: GSColorData.text),
        hintText: hintText,
        hintStyle: const TextStyle(color: GSColorData.accent),
      ),
    );
  }

  TextFormField phoneTextField(String labelText, String hintText) {
    return TextFormField(
      key: key,
      keyboardType: TextInputType.phone,
      controller: controller,
      cursorHeight: 19,
      cursorColor: GSColorData.text,
      validator: validator,
      style: const TextStyle(
        color: GSColorData.text,
      ),
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: () {
              controller!.clear();
            },
            icon: const Icon(
              Icons.close,
              size: 16,
              color: GSColorData.accent,
            )),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: GSColorData.accent),
        ),
        labelText: labelText,
        labelStyle: const TextStyle(color: GSColorData.text),
        hintText: hintText,
        hintStyle: const TextStyle(color: GSColorData.accent),
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
          color: GSColorData.text,
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
