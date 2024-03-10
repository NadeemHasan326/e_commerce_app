import 'package:client/constants/color_constant.dart';
import 'package:flutter/material.dart';

class CustomMaterialButton extends StatefulWidget {
  final String? label;
  final VoidCallback? onTap;
  const CustomMaterialButton({super.key,this.label,this.onTap});

  @override
  State<CustomMaterialButton> createState() => _CustomMaterialButtonState();
}

class _CustomMaterialButtonState extends State<CustomMaterialButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.whiteColor,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
        width: MediaQuery.of(context).size.width,
        child: InkWell(
          onTap: widget.onTap,
          child: Text(
            widget.label ?? ''
          ),
        ),
      ),
    );
  }
}