import 'package:bl_alkilu/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputFormField extends StatefulWidget {
  final String hint;
  final String? Function(String?)? validator;
  final VoidCallback? onPressed;
  final bool secure;
  final bool isNumber;
  final Function(String?)? onSave;
  final int maxLines;
  final IconData? icon;
  final Widget? suffixIcon;
  final Widget? prefix;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final bool isNext;
  final int? maxLength;
  final String? upperText;
  final bool hasLabel;
  final Color? hintColor;
  final bool isRTL;
  final double horizontalMargin;
  final bool multiLine;
  final Color? fillColor;
  final Color? textColor;
  final Color? labelColor;
  final bool? isRequired;
  final double radius;
  final Color? iconColor;
  final Color? enabledBorderColor;


  const InputFormField({
    Key? key,
    this.prefix,
    this.isNumber = false,
    this.controller,
    this.maxLines = 1,
    this.onPressed,
    this.onSave,
    this.secure = false,
    this.hint='',
    this.validator,
    this.onChanged,
    this.suffixIcon,
    this.onTap,
    this.isNext = true,
    this.maxLength,
    this.upperText,
    this.hasLabel = false,
    this.isRTL = false,
    this.icon,
    this.hintColor = Colors.white,
    this.horizontalMargin = 0,
    this.multiLine = false,
    this.fillColor,
    this.textColor=Colors.white,
    this.labelColor,
    this.isRequired, this.radius=25, this.iconColor=Colors.white, this.enabledBorderColor=appPurpleColor,
  }) : super(key: key);

  @override
  _InputFormFieldState createState() => _InputFormFieldState();
}

class _InputFormFieldState extends State<InputFormField> {

  late bool _showPassword;



  @override
  void initState() {
    _showPassword = widget.secure;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final BorderRadius borderRadius = BorderRadius.circular(widget.radius);

    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 7, horizontal: widget.horizontalMargin),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.upperText != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  widget.upperText!,
                  style: const TextStyle(
                      fontWeight: FontWeight.w900, color: Colors.grey),
                ),
              ),
            TextFormField(
              
              controller: widget.controller,
              obscureText: _showPassword,
              onSaved: widget.onSave,
              onChanged: widget.onChanged,
              maxLength: widget.maxLength,
              textInputAction: widget.multiLine
                  ? TextInputAction.newline
                  : widget.isNext
                      ? TextInputAction.next
                      : TextInputAction.done,
              keyboardType: widget.multiLine
                  ? TextInputType.multiline
                  : widget.isNumber
                      ? TextInputType.number
                      : TextInputType.emailAddress,
              //cursorColor: primaryColor,
              validator: widget.validator,
              maxLines: widget.maxLines,
              enabled: widget.onTap == null,
              buildCounter: (context,
                      {required currentLength,
                      required isFocused,
                      maxLength}) =>
                  null,
              style: TextStyle(color: widget.textColor,fontSize: 16),
              decoration: InputDecoration(
                fillColor: widget.fillColor,
                  filled: true,
                  hintStyle: TextStyle(color: widget.hintColor, fontSize: 16),
                  labelStyle: TextStyle(color: widget.labelColor),
                  counterStyle:
                      const TextStyle(fontSize: 0, color: Colors.transparent),
                  prefix: widget.prefix,
                  prefixIcon: widget.icon == null
                      ? null
                      : Icon(
                          widget.icon,
                          color: widget.iconColor,
                          size: 18,
                        ),
                  suffixIcon: widget.suffixIcon == null
                      ? widget.secure
                          ? IconButton(
                              padding: const EdgeInsets.all(0),
                              icon: Icon(
                                _showPassword
                                    ? FontAwesomeIcons.eyeSlash
                                    : FontAwesomeIcons.eye,
                                color: Colors.grey,
                                size: 18,
                              ),
                              onPressed: () => setState(
                                  () => _showPassword = !_showPassword),
                            )
                          : null
                      : widget.suffixIcon,
                  hintText: widget.hasLabel ? null : widget.hint,
                  labelText: widget.hasLabel ? widget.hint : null,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 15, vertical: widget.maxLines == 1 ? 10 : 15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: borderRadius,
                    borderSide:  BorderSide(color: widget.enabledBorderColor!),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: borderRadius,
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: borderRadius,
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: borderRadius,
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: borderRadius,
                    borderSide: const BorderSide(color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
