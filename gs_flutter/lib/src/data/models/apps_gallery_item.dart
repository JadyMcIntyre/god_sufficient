import 'package:flutter/cupertino.dart';

class AppsGalleryItem {
  final String title;
  final IconData iconPath; //temp
  final VoidCallback onTap;
  AppsGalleryItem(this.title, this.iconPath, this.onTap);
}
