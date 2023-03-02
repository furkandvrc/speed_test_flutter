import 'package:flutter/material.dart';
import '../../theme/text_style.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {Key? key,
      required this.onTap,
      this.textColor,
      this.width,
      this.height,
      this.title,
      this.widget,
      this.textStyle,
      this.contactPadding,
      this.buttonBorderColor,
      this.buttonBgColor,
      this.padding})
      : assert(widget != null || title != null,
            'Widget and title parameters cannot be null at the same time.'),
        super(key: key);

  final VoidCallback onTap;
  final double? width;
  final double? height;
  final Color? textColor;
  final String? title;
  final Widget? widget;
  final TextStyle? textStyle;
  final EdgeInsets? contactPadding;
  final EdgeInsets? padding;
  final Color? buttonBorderColor;
  final Color? buttonBgColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: SizedBox(
        height: height,
        width: width,
        child: ElevatedButton(
          onPressed: onTap,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(buttonBgColor),
            side: MaterialStateProperty.all(
              BorderSide(color: buttonBorderColor ?? Colors.transparent),
            ),
          ),
          child: Padding(
            padding: contactPadding ?? EdgeInsets.zero,
            child: widget ??
                Text(
                  title!,
                  style: textStyle?.copyWith(color: textColor) ??
                      s14W700Dark().copyWith(color: textColor),
                ),
          ),
        ),
      ),
    );
  }
}
