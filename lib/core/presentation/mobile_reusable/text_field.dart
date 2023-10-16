import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/color.dart';

class CustomTextField extends StatefulWidget {
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

  const CustomTextField({
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
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isHidden = true;
  bool isValid = false;

  @override
  void initState() {
    if (widget.isValid != null) {
      isValid = widget.isValid!;
    }
    super.initState();
  }

  @override
  void didUpdateWidget(covariant CustomTextField oldWidget) {
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
          height: 80.h,
          padding: EdgeInsets.only(top: 18.h, bottom: 15.h, left: 26.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(
              width: 0.25,
              color: widget.errorText == null ? kBorderGrey : kRed,
            ),
            color: kWhite,
          ),
          child: Center(
            child: TextFormField(
              enabled: widget.isEnabled,
              controller: widget.textController,
              focusNode: widget.focusNode,
              keyboardType: widget.keyboardType,
              autofillHints: widget.autofillHints,
              textInputAction: widget.textInputAction,
              onChanged: (text) {
                if (widget.onChanged != null) {
                  widget.onChanged!(text);
                }
                if (widget.isSuffixOn && widget.isValid == null) {
                  setState(() {
                    isValid = widget.validator!(text);
                  });
                }
              },
              onFieldSubmitted: widget.onSubmitted,
              textAlignVertical: TextAlignVertical.center,
              // style: kPoppins15400(context, color: kDatePickerFont),
              cursorColor: kAccent,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                // labelStyle: kPoppins15400(context, color: kDatePickerFont),
                labelText: widget.hint,
                suffixIcon: widget.isPassword
                    ? GestureDetector(
                        onTap: _toggleVisibility,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(9.w, 10.h, 22.w, 10.h),
                          child: isHidden
                              ? Image.asset('images/normal/groupCopy4_3.png',
                                  width: 24.w,
                                  height: 24.w,
                                  color: kTextFieldIcon)
                              : Image.asset('images/show.png',
                                  width: 24.w,
                                  height: 24.w,
                                  color: kTextFieldIcon),
                        ),
                      )
                    : Padding(
                        padding: EdgeInsets.fromLTRB(9.w, 10.h, 22.w, 10.h),
                        child: (widget.isSuffixOn && isValid)
                            ? Icon(
                                Icons.check_circle,
                                size: 24.w,
                                color: kAccent,
                              )
                            : Icon(
                                Icons.circle,
                                size: 24.w,
                                color: kTextFieldSuffix,
                              ),
                      ),
              ),
              obscureText: widget.isPassword ? isHidden : false,
              obscuringCharacter: '●',
            ),
          ),
        ),
        // Error Text
        Positioned(
          bottom: -18.h,
          left: 26.w,
          child: Text(
            widget.errorText ?? '',
            // style: kPoppins11400(context, color: kRed),
          ),
        )
      ],
    );
  }

  _toggleVisibility() {
    setState(() {
      isHidden = !isHidden;
    });
  }
}
