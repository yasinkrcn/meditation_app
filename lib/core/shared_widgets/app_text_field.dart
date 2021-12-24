// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_constructors_in_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/core/constants/theme/app_colors.dart';
import 'package:meditation_app/core/constants/theme/app_decoration.dart';

class AppTextField extends StatelessWidget {
  AppTextField({
    Key? key,
    this.hintText,
    this.suffixIcon,
    this.onTap,
  }) : super(key: key);
  final String? hintText;
  final String? suffixIcon;

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        onTap: onTap,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.hintTextButtonColor,
          suffix: suffixIcon != null ? SvgPicture.asset(suffixIcon!) : null,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: AppDecoration.borderRadius15,
          ),
          hintText: hintText ?? '',
        ),
      ),
    );
  }
}
