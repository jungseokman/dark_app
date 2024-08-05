import 'package:dark_app/features/dark_app/config/styles.dart';
import 'package:dark_app/features/dark_app/presentation/bloc/secret/secret_bloc.dart';
import 'package:dark_app/features/dark_app/presentation/widgets/custom_button_border.dart';
import 'package:dark_app/features/dark_app/presentation/widgets/custom_button_fill.dart';
import 'package:dark_app/features/dark_app/presentation/widgets/custom_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class JoinPage extends StatefulWidget {
  const JoinPage({super.key});

  @override
  State<JoinPage> createState() => _JoinPageState();
}

class _JoinPageState extends State<JoinPage> {
  final TextEditingController idController = TextEditingController();
  final TextEditingController nicknameController = TextEditingController();
  final TextEditingController pwnameController = TextEditingController();
  final TextEditingController pw2nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.read<SecretBloc>().state.isSecret
          ? AppColors.blackColors[2]
          : Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomInput(
              hintText: "ID",
              textEditingController: idController,
            ),
            CustomInput(
              hintText: "NICKNAME",
              textEditingController: nicknameController,
            ),
            CustomInput(
              hintText: "PASSWORD",
              textEditingController: pwnameController,
              isPw: true,
            ),
            CustomInput(
              hintText: "COMFIRM PASSWORD",
              textEditingController: pw2nameController,
              isPw: true,
            ),
            CustomButtonFill(
              text: "JOIN",
              onTap: () {
                context.goNamed("signin");
              },
            ),
            SizedBox(
              height: 3.h,
            ),
            CustomButtonBorder(
              text: "BACK",
              onTap: () {
                context.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
