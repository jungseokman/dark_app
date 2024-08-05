import 'package:dark_app/features/dark_app/config/constans.dart';
import 'package:dark_app/features/dark_app/config/styles.dart';
import 'package:dark_app/features/dark_app/presentation/bloc/secret/secret_bloc.dart';
import 'package:dark_app/features/dark_app/presentation/widgets/custom_button_border.dart';
import 'package:dark_app/features/dark_app/presentation/widgets/custom_button_fill.dart';
import 'package:dark_app/features/dark_app/presentation/widgets/custom_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final double titleTop = 220.h;
  final double titleLeft = 85.w;
  final TextEditingController idController = TextEditingController();
  final TextEditingController pwController = TextEditingController();

  void loginHandler() {
    if (idController.text == "show" && pwController.text == "123") {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
      idController.clear();
      pwController.clear();
      context.read<SecretBloc>().add(const ChangeSecretEvent(isSecret: true));
    } else {
      context.goNamed("notice");
    }
  }

  @override
  void dispose() {
    super.dispose();
    idController.dispose();
    pwController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isSecret = context.watch<SecretBloc>().state.isSecret;

    return Scaffold(
      body: Stack(
        children: [
          AnimatedContainer(
            duration: Constants.signinDuration,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color:
                isSecret ? AppColors.blackColors[2] : AppColors.whiteColors[0],
          ),
          AnimatedPositioned(
            duration: Constants.signinDuration,
            top: titleTop,
            left: isSecret ? 60.w + titleLeft : titleLeft,
            child: AnimatedDefaultTextStyle(
              duration: Constants.signinDuration,
              style: TextStyles.title1.copyWith(
                  color: isSecret
                      ? AppColors.greenColor[0]
                      : AppColors.blueColors[0]),
              child: const Text(
                "R",
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Constants.signinDuration,
            top: titleTop,
            left: 30.w + titleLeft,
            child: AnimatedDefaultTextStyle(
              duration: Constants.signinDuration,
              style: TextStyles.title1.copyWith(
                  color: isSecret
                      ? AppColors.greenColor[0]
                      : AppColors.blueColors[0]),
              child: const Text(
                "A",
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Constants.signinDuration,
            top: titleTop,
            left: isSecret ? 150.w + titleLeft : 60.w + titleLeft,
            child: AnimatedDefaultTextStyle(
              duration: Constants.signinDuration,
              style: TextStyles.title1.copyWith(
                  color: isSecret
                      ? AppColors.greenColor[0]
                      : AppColors.blueColors[0]),
              child: const Text(
                "P",
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Constants.signinDuration,
            top: titleTop,
            left: 90.w + titleLeft,
            child: AnimatedDefaultTextStyle(
              duration: Constants.signinDuration,
              style: TextStyles.title1.copyWith(
                  color: isSecret
                      ? AppColors.greenColor[0]
                      : AppColors.blueColors[0]),
              child: const Text(
                "K",
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Constants.signinDuration,
            top: titleTop,
            left: isSecret ? 180.w + titleLeft : 120.w + titleLeft,
            child: AnimatedDefaultTextStyle(
              duration: Constants.signinDuration,
              style: TextStyles.title1.copyWith(
                  color: isSecret
                      ? AppColors.greenColor[0]
                      : AppColors.blueColors[0]),
              child: const Text(
                "P",
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Constants.signinDuration,
            top: titleTop,
            left: isSecret ? 120.w + titleLeft : 150.w + titleLeft,
            child: AnimatedDefaultTextStyle(
              duration: Constants.signinDuration,
              style: TextStyles.title1.copyWith(
                  color: isSecret
                      ? AppColors.greenColor[0]
                      : AppColors.blueColors[0]),
              child: const Text(
                "A",
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Constants.signinDuration,
            top: titleTop,
            left: isSecret ? titleLeft : 180.w + titleLeft,
            child: AnimatedDefaultTextStyle(
              duration: Constants.signinDuration,
              style: TextStyles.title1.copyWith(
                  color: isSecret
                      ? AppColors.greenColor[0]
                      : AppColors.blueColors[0]),
              child: const Text(
                "D",
              ),
            ),
          ),
          Positioned(
            top: titleTop + 80.h,
            left: 0,
            right: 0,
            child: Column(
              children: [
                CustomInput(
                  hintText: "ID",
                  textEditingController: idController,
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomInput(
                  isPw: true,
                  hintText: "PASSWORD",
                  textEditingController: pwController,
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomButtonFill(
                  text: "LOGIN",
                  onTap: loginHandler,
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomButtonBorder(
                  text: "JOIN",
                  onTap: () {
                    context.pushNamed("join");
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
