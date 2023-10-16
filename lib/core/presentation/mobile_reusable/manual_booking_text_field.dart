import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/color.dart';

class ManualBookingTextField extends StatefulWidget {
  final String hint;
  final bool isPassword;
  final TextEditingController textController;
  final FocusNode? focusNode;
  final bool isSuffixOn;
  final bool Function(String text)? validator;
  final bool isEnabled;
  final void Function(String text)? onChanged;
  final void Function(String text)? onSubmitted;
  final bool? isValid;
  final String? errorText;
  final TextInputType? keyboardType;
  final Iterable<String>? autofillHints;
  final TextInputAction? textInputAction;
  final bool isMobile;
  final bool onColumn;

  const ManualBookingTextField({
    Key? key,
    this.isPassword = false,
    required this.hint,
    required this.textController,
    this.focusNode,
    this.isSuffixOn = true,
    this.validator,
    this.isEnabled = true,
    this.onChanged,
    this.onSubmitted,
    this.isValid,
    this.errorText,
    this.keyboardType,
    this.autofillHints,
    this.textInputAction = TextInputAction.done,
    this.isMobile = true,
    this.onColumn = true,
  }) : super(key: key);

  @override
  State<ManualBookingTextField> createState() => _ManualBookingTextFieldState();
}

class _ManualBookingTextFieldState extends State<ManualBookingTextField> {
  bool isValid = false;

  @override
  void initState() {
    if (widget.isValid != null) {
      isValid = widget.isValid!;
    }
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ManualBookingTextField oldWidget) {
    if (widget.isValid != oldWidget.isValid) {
      isValid = widget.isValid!;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: widget.onColumn ? double.maxFinite : 120.7.w,
          height: widget.isMobile ? 80.h : 26.7.h,
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 0.25,
              color: widget.errorText == null ? kBorderGrey : kRed,
            ),
          ),
          child: Center(
            child: TextFormField(
              enabled: widget.isEnabled,
              controller: widget.textController,
              focusNode: widget.focusNode,
              keyboardType: widget.keyboardType ?? TextInputType.name,
              autofillHints: widget.autofillHints,
              textInputAction: widget.textInputAction,
              onChanged: (text) {
                if (widget.onChanged != null) {
                  widget.onChanged!(text);
                }
                if (widget.isValid == null) {
                  setState(() {
                    isValid = widget.validator!(text);
                  });
                }
              },
              onFieldSubmitted: widget.onSubmitted,
              textAlignVertical: TextAlignVertical.center,
              // style: kPoppins15400(context, isMobile: widget.isMobile, color: kDatePickerFont),
              cursorColor: kAccent,
              decoration: InputDecoration(
                contentPadding: widget.isMobile
                    ? EdgeInsets.only(top: 18.h, bottom: 15.h, left: 26.w)
                    : EdgeInsets.only(top: 6.h, bottom: 6.h, left: 8.w),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                // labelStyle: kPoppins15400(context, isMobile: widget.isMobile, color: kDatePickerFont),
                // labelText: widget.hint,
                label: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: widget.hint,
                        // style: kPoppins15400(context, color: kDatePickerFont, isMobile: widget.isMobile),
                      ),
                      TextSpan(
                        text: ' *',
                        // style: kPoppins15400(context, color: kRed, isMobile: widget.isMobile),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        // Error Text
        Positioned(
          bottom: widget.isMobile ? -15.w : -6.w,
          left: widget.isMobile ? 26.w : 5.w,
          child: Text(
            widget.errorText ?? '',
            // style: kPoppins11400(context, isMobile: widget.isMobile, color: kRed),
          ),
        ),
      ],
    );
  }
}
