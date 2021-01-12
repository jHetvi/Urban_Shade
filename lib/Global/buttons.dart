import 'package:flutter/material.dart';
import 'package:urban_shade/Global/colors.dart';

class CustomButton extends StatelessWidget {
  final bool lightBg;
  final VoidCallback onTap;
  final String text;
  final double width;
  final double height;
  final double fontSize;
  final TextStyle textStyle;
  final EdgeInsets padding;
  final Color bgColor;
  final BoxBorder border;
  final double elevation;
  final Widget prefix;
  final FontWeight fontWeight;
  CustomButton.lightBackground({
    this.text,
    this.width,
    this.height,
    this.onTap,
    this.fontSize,
    this.padding = const EdgeInsets.all(12),
    this.textStyle,
    this.bgColor = const Color(0xffd1af94),
    this.border,
    this.elevation = 5,
    this.prefix,
    this.fontWeight = FontWeight.bold,
  }) : lightBg = true;
  CustomButton.darkBackground({
    this.text,
    this.width,
    this.height,
    this.onTap,
    this.fontSize,
    this.padding = const EdgeInsets.all(12),
    this.textStyle,
    this.bgColor = const Color(0xFFB98A65),
    this.border,
    this.elevation = 5,
    this.prefix,
    this.fontWeight = FontWeight.bold,
  }) : lightBg = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(150),
      child: Container(
        width: width,
        height: height,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              width: double.maxFinite,
              alignment: Alignment.center,
              child: Text(
                text,
                style: textStyle ??
                    TextStyle(
                      color: whiteColor(),
                      fontSize: fontSize ?? 24,
                      fontWeight: fontWeight,
                    ),
              ),
            ),
            if (prefix != null)
              Positioned(
                left: 16,
                top: 0,
                bottom: 0,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: prefix,
                ),
              ),
          ],
        ),
        alignment: Alignment.center,
        padding: padding,
        decoration: BoxDecoration(
          color: lightBg ? lightColor() : darkColor(),
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: elevation,
              offset: Offset(elevation, elevation),
            ),
          ],
          border: Border.all(color: whiteColor(), width: 2),
        ),
      ),
    );
  }
}
