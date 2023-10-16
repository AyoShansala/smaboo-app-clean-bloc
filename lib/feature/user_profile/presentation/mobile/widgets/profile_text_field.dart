import 'package:flutter/material.dart';
import 'package:smaboo_business_app/utils/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTextField extends StatefulWidget {
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

  const ProfileTextField(
      {Key? key,
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
      })
      : super(key: key);

  @override
  State<ProfileTextField> createState() => _ProfileTextFieldState();
}

class _ProfileTextFieldState extends State<ProfileTextField> {
  bool isValid = false;

  @override
  void initState() {
    if(widget.isValid != null) {
      isValid = widget.isValid!;
    }
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ProfileTextField oldWidget) {
    if(widget.isValid != oldWidget.isValid) {
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
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 0.25,
                color: widget.errorText==null? Color(0xff979797) : Colors.red,
              ),
              color: Colors.white),
          child: Center(
            child: TextFormField(
              enabled: widget.isEnabled,
              controller: widget.textController,
              focusNode: widget.focusNode,
              keyboardType: widget.keyboardType?? TextInputType.name,
              autofillHints: widget.autofillHints,
              textInputAction: widget.textInputAction,
              onChanged: (text) {
                if( widget.onChanged != null) {
                  widget.onChanged!(text);
                }
              },
              onFieldSubmitted: widget.onSubmitted,
              textAlignVertical: TextAlignVertical.center,
              style: TextStyle(
                  color: const Color(0xff2e2e2e),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontSize: 15.0.w),
              cursorColor: kAccent,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                labelStyle: TextStyle(
                    color: const Color(0xff2e2e2e),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                    fontStyle: FontStyle.normal,
                    fontSize: 15.0.w),
                labelText: widget.hint,
              ),
              obscuringCharacter: '●',
            ),
          ),
        ),
        // Error Text
        Positioned(
          bottom: -15.w,
          left: 26.w,
          child: Text(
            widget.errorText??'',
            style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                fontSize: 11.0.w),
          ),
        )
      ],
    );
  }
}
