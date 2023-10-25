import 'package:flutter/material.dart';
import '../assets/colors.dart';

extension AppBarExtension on AppBar {
  AppBar defaultAppBar(
      {bool centerTitle = true,
      String titleText = 'change title',
      TextStyle? titleTextStyle}) {
    TextStyle defaultTextStyle = const TextStyle(color: GSColorData.text);
    return AppBar(
      key: const Key('app_bar_default'),
      titleSpacing: centerTitle ? 0 : -20,
      title: Text(
        titleText,
        style: titleTextStyle ?? defaultTextStyle,
      ),
      centerTitle: centerTitle,
      leadingWidth: 80,
      backgroundColor: GSColorData.secondary,
    );
  }
}
