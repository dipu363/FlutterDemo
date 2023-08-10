import 'package:flutter/material.dart';
import 'package:internetconnectivitycheck/ui/utils/app_colors.dart';

class ImagePickerButtonWidget extends StatelessWidget {
  final Icon  icon;
  final VoidCallback onClicked;

  const ImagePickerButtonWidget({
     Key? key,
    required this.icon,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => IconButton(
    iconSize: 24,
    color: neutralBlack300,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    onPressed: onClicked,
    icon: icon,
  );
}