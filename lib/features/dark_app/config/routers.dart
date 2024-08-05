import 'package:dark_app/features/dark_app/presentation/bloc/secret/secret_bloc.dart';
import 'package:dark_app/features/dark_app/presentation/pages/chat_secret/chat_detail.dart';
import 'package:dark_app/features/dark_app/presentation/pages/chat_secret/chat_secret_page.dart';
import 'package:dark_app/features/dark_app/presentation/pages/edit/edit_page.dart';
import 'package:dark_app/features/dark_app/presentation/pages/edit/edit_secret_page.dart';
import 'package:dark_app/features/dark_app/presentation/pages/join/join_page.dart';
import 'package:dark_app/features/dark_app/presentation/pages/notice/notice_detail.dart';
import 'package:dark_app/features/dark_app/presentation/pages/notice/notice_detail_secret.dart';
import 'package:dark_app/features/dark_app/presentation/pages/notice/notice_page.dart';
import 'package:dark_app/features/dark_app/presentation/pages/notice/notice_secret_page.dart';
import 'package:dark_app/features/dark_app/presentation/pages/setting/setting_page.dart';
import 'package:dark_app/features/dark_app/presentation/pages/setting/setting_secret_page.dart';
import 'package:dark_app/features/dark_app/presentation/pages/signin/signin_page.dart';
import 'package:dark_app/features/dark_app/presentation/widgets/shell_component.dart';
import 'package:dark_app/features/dark_app/presentation/widgets/shell_component_secret.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final routers = GoRouter(
  initialLocation: "/signin",
  routes: [
    //? 로그인 화면
    GoRoute(
      path: "/signin",
      name: "signin",
      pageBuilder: (context, state) =>
          NoTransitionPage(key: state.pageKey, child: const SigninPage()),
    ),

    //? 가입 화면
    GoRoute(
      path: "/join",
      name: "join",
      pageBuilder: (context, state) =>
          NoTransitionPage(key: state.pageKey, child: const JoinPage()),
    ),

    //? 쉡 화면
    ShellRoute(
      pageBuilder: (context, state, child) {
        if (context.read<SecretBloc>().state.isSecret) {
          return NoTransitionPage(
            key: state.pageKey,
            child: ShellComponentSecret(
              child: child,
            ),
          );
        } else {
          return NoTransitionPage(
            key: state.pageKey,
            child: ShellComponent(
              child: child,
            ),
          );
        }
      },
      routes: [
        //? 게시글 화면
        GoRoute(
          path: "/notice",
          name: "notice",
          pageBuilder: (context, state) {
            if (context.read<SecretBloc>().state.isSecret) {
              return NoTransitionPage(
                  key: state.pageKey, child: const NoticeSecretPage());
            } else {
              return NoTransitionPage(
                  key: state.pageKey, child: const NoticePage());
            }
          },
        ),

        //? 게시글 상세
        GoRoute(
          path: "/notice/detail",
          name: "noticeDetail",
          pageBuilder: (context, state) {
            if (context.read<SecretBloc>().state.isSecret) {
              return NoTransitionPage(
                  key: state.pageKey, child: const NoticeDetailSecret());
            } else {
              return NoTransitionPage(
                  key: state.pageKey, child: const NoticeDetail());
            }
          },
        ),

        //? 게시글 작성
        GoRoute(
          path: "/edit",
          name: "edit",
          pageBuilder: (context, state) {
            if (context.read<SecretBloc>().state.isSecret) {
              return NoTransitionPage(
                  key: state.pageKey, child: const EditSecretPage());
            } else {
              return NoTransitionPage(
                  key: state.pageKey, child: const EditPage());
            }
          },
        ),

        //? 설정
        GoRoute(
          path: "/setting",
          name: "setting",
          pageBuilder: (context, state) {
            if (context.read<SecretBloc>().state.isSecret) {
              return NoTransitionPage(
                  key: state.pageKey, child: const SettingSecretPage());
            } else {
              return NoTransitionPage(
                  key: state.pageKey, child: const SettingPage());
            }
          },
        ),

        //? 대화
        GoRoute(
          path: "/chat",
          name: "chat",
          pageBuilder: (context, state) {
            return NoTransitionPage(
                key: state.pageKey, child: const ChatSecretPage());
          },
        ),

        //? 대화 상세
        GoRoute(
          path: "/chat/detail",
          name: "chatDetail",
          pageBuilder: (context, state) {
            return NoTransitionPage(
                key: state.pageKey, child: const ChatDetailPage());
          },
        ),
      ],
    ),
  ],
);
