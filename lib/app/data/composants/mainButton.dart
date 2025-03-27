import 'package:e_regle/app/data/composants/colors.dart';
import 'package:flutter/material.dart';

class Mainbutton {
  static Widget mainButton(
      {required String title,
      bool hasIcon = true,
      double height = 55,
      double width = 400,
      required void Function()? onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        backgroundColor: AppColors.secondaryColor,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 20),
          if (hasIcon)
            Icon(
              Icons.arrow_forward,
              color: AppColors.primaryColor,
            ),
        ],
      ),
    );
  }
}
