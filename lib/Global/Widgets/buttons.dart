import 'package:flutter/material.dart';
import 'package:urban_shade/Global/Variables/colors.dart';
import 'package:slider_button/slider_button.dart';

class SlideButton extends StatelessWidget {
  final bool lightBg;
  final VoidCallback action;
  final String text;
  final double width;
  final double height;
  final double fontSize;
  final TextStyle textStyle;
  final TextAlign textAlign;
  final EdgeInsets padding;
  final Color bgColor;
  final double elevation;
  final Widget prefix;
  final FontWeight fontWeight;
  SlideButton.lightBackground({
    this.text,
    this.width,
    this.height,
    this.action,
    this.fontSize,
    this.padding = const EdgeInsets.all(12),
    this.textStyle,
    this.textAlign,
    this.bgColor = const Color(0xffd1af94),
    this.elevation = 5,
    this.prefix,
    this.fontWeight = FontWeight.bold,
  }) : lightBg = true;
  SlideButton.darkBackground({
    this.text,
    this.width,
    this.height,
    this.action,
    this.fontSize,
    this.padding = const EdgeInsets.all(12),
    this.textStyle,
    this.textAlign,
    this.bgColor = const Color(0xFFB98A65),
    this.elevation = 5,
    this.prefix,
    this.fontWeight = FontWeight.bold,
  }) : lightBg = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SliderButton(
          height: height,
          width: width,
          backgroundColor: lightBg ? lightColor() : darkColor(),
          boxShadow: BoxShadow(
            color: Colors.black12,
            blurRadius: elevation,
            offset: Offset(elevation, elevation),
          ),
          action: action,
          alignLabel: lightBg ? Alignment(0.5, 0) : Alignment(-0.5, 0),
          label: Text(
            text,
            style: textStyle ??
                TextStyle(
                  color: whiteColor(),
                  fontSize: fontSize ?? 24,
                  fontWeight: fontWeight,
                ),
            textAlign: textAlign ?? TextAlign.center,
          ),
          direction: lightBg
              ? DismissDirection.startToEnd
              : DismissDirection.endToStart,
          alignment: lightBg ? Alignment.centerLeft : Alignment.centerRight,
          wid: lightBg ? width - 60 : width + 60,
          icon: Center(
            child: lightBg
                ? Text(
                    ">>",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 40,
                    ),
                  )
                : Text(
                    "<<",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 40,
                    ),
                  ),
          ),
        ));
  }
}

class SimpleButton extends StatelessWidget {
  final bool lightBg;
  final VoidCallback onTap;
  final String text;
  final double width;
  final double height;
  final double fontSize;
  final TextStyle textStyle;
  final TextAlign textAlign;
  final EdgeInsets padding;
  final Color bgColor;
  final BoxBorder border;
  final double elevation;
  final Widget prefix;
  final FontWeight fontWeight;
  SimpleButton.lightBackground({
    this.text,
    this.width,
    this.height,
    this.onTap,
    this.fontSize,
    this.padding = const EdgeInsets.all(12),
    this.textStyle,
    this.textAlign,
    this.bgColor = const Color(0xffd1af94),
    this.border,
    this.elevation = 5,
    this.prefix,
    this.fontWeight = FontWeight.bold,
  }) : lightBg = true;
  SimpleButton.darkBackground({
    this.text,
    this.width,
    this.height,
    this.onTap,
    this.fontSize,
    this.padding = const EdgeInsets.all(12),
    this.textStyle,
    this.textAlign,
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
              alignment: Alignment.center,
              child: Text(
                text,
                style: textStyle ??
                    TextStyle(
                      color: whiteColor(),
                      fontSize: fontSize ?? 24,
                      fontWeight: fontWeight,
                    ),
                textAlign: textAlign ?? TextAlign.center,
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
              color: Colors.white24,
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

class SignUpButton extends StatelessWidget {
  final bool googleBg;
  final VoidCallback onTap;
  final String text;
  final double width;
  final double height;
  final double fontSize;
  final TextStyle textStyle;
  final TextAlign textAlign;
  final EdgeInsets padding;
  final Color bgColor;
  final BoxBorder border;
  final double elevation;
  final Widget prefix;
  final FontWeight fontWeight;
  SignUpButton.googleBackground({
    this.text,
    this.width,
    this.height,
    this.onTap,
    this.fontSize,
    this.padding = const EdgeInsets.all(12),
    this.textStyle,
    this.textAlign,
    this.bgColor = const Color(0xffd1af94),
    this.border,
    this.elevation = 5,
    this.prefix,
    this.fontWeight = FontWeight.bold,
  }) : googleBg = true;
  SignUpButton.facebookBackground({
    this.text,
    this.width,
    this.height,
    this.onTap,
    this.fontSize,
    this.padding = const EdgeInsets.all(12),
    this.textStyle,
    this.textAlign,
    this.bgColor = const Color(0xFF3B5998),
    this.border,
    this.elevation = 5,
    this.prefix,
    this.fontWeight = FontWeight.bold,
  }) : googleBg = false;

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
              alignment: Alignment.center,
              child: Text(
                text,
                style: textStyle ??
                    TextStyle(
                      color: googleBg ? blackColor() : whiteColor(),
                      fontSize: fontSize ?? 24,
                      fontWeight: fontWeight,
                    ),
                textAlign: textAlign ?? TextAlign.center,
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
          color: googleBg ? whiteColor() : facebookColor(),
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Colors.white24,
              blurRadius: elevation,
              offset: Offset(elevation, elevation),
            ),
          ],
          //border: Border.all(color: whiteColor(), width: 2),
        ),
      ),
    );
  }
}
