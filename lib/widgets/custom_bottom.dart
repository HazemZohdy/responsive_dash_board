import 'package:flutter/material.dart';

class CustomButttom extends StatelessWidget {
  const CustomButttom({super.key, this.backgroundColor, this.textColor, required this.text});
  final Color? backgroundColor, textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 1,
            backgroundColor: backgroundColor ?? Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: textColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
