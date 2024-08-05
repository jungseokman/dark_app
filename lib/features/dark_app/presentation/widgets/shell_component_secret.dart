import 'package:dark_app/features/dark_app/config/styles.dart';
import 'package:dark_app/features/dark_app/presentation/bloc/secret/secret_bloc.dart';
import 'package:dark_app/features/dark_app/presentation/widgets/bottom_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ShellComponentSecret extends StatefulWidget {
  const ShellComponentSecret({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<ShellComponentSecret> createState() => _ShellComponentSecretState();
}

class _ShellComponentSecretState extends State<ShellComponentSecret> {
  int menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.read<SecretBloc>().state.isSecret
          ? AppColors.blackColors[2]
          : Colors.white,
      body: Stack(
        children: [
          widget.child,
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 90.h,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: AppColors.greenColor[1]),
                ),
                color: AppColors.blackColors[2],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomMenu(
                    icon: Icons.list_alt,
                    label: "게시글",
                    onTap: () {
                      setState(() {
                        menuIndex = 0;
                      });
                      context.pushNamed("notice");
                    },
                    currentIndex: menuIndex,
                    index: 0,
                  ),
                  BottomMenu(
                      icon: Icons.edit_square,
                      label: "글작성",
                      onTap: () {
                        setState(() {
                          menuIndex = 1;
                        });
                        context.pushNamed("edit");
                      },
                      currentIndex: menuIndex,
                      index: 1),
                  BottomMenu(
                      icon: Icons.message_rounded,
                      label: "대화",
                      onTap: () {
                        setState(() {
                          menuIndex = 2;
                        });
                        context.pushNamed("chat");
                      },
                      currentIndex: menuIndex,
                      index: 2),
                  BottomMenu(
                    icon: Icons.settings,
                    label: "설정",
                    onTap: () {
                      setState(() {
                        menuIndex = 3;
                      });
                      context.pushNamed("setting");
                    },
                    currentIndex: menuIndex,
                    index: 3,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
