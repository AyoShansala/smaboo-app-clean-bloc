import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_in_register/presentation/mobile/contact_support_screen.dart';

class SignInRegisterScreen extends StatelessWidget {
  const SignInRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/normal/group4Copy_2.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                children: [
                  // You activity can be
                  Text(
                    "You activity can be changed through\nSettings later.",
                    style: const TextStyle(
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w300,
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      fontSize: 13.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  InkWell(
                    onTap: () {
                      _show(context);
                    },
                    child: Image.asset('images/normal/group.png'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _show(context) {
    showModalBottomSheet(
      isScrollControlled: true,
      barrierColor: Colors.white.withOpacity(0.3),
      backgroundColor: Colors.transparent,
      enableDrag: false,
      useSafeArea: true,
      isDismissible: true,
      context: context,
      constraints: BoxConstraints(maxHeight: 900.h),
      builder: (context) => ContactSupportScreen(),
      // builder: (_) {
      //   return BlocProvider.value(
      //     value: BlocProvider.of<BusinessCardListBloc>(context),
      //     child: SelectBusinessScreen(),
      //   );
      // },
    );
  }
}
