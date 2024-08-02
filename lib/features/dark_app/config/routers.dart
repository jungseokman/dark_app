import 'package:dark_app/features/dark_app/presentation/pages/edit/edit_page.dart';
import 'package:dark_app/features/dark_app/presentation/pages/notice/notice_page.dart';
import 'package:dark_app/features/dark_app/presentation/pages/setting/setting_page.dart';
import 'package:dark_app/features/dark_app/presentation/pages/signin/signin_page.dart';
import 'package:dark_app/features/dark_app/presentation/widgets/shell_component.dart';
import 'package:go_router/go_router.dart';

final routers = GoRouter(
  initialLocation: "/signin",
  routes: [
    //? 가입 화면
    GoRoute(
      path: "/signin",
      name: "signin ",
      pageBuilder: (context, state) =>
          NoTransitionPage(key: state.pageKey, child: const SigninPage()),
    ),

    //? 쉡 화면
    ShellRoute(
      pageBuilder: (context, state, child) {
        return NoTransitionPage(
          key: state.pageKey,
          child: ShellComponent(
            child: child,
          ),
        );
      },
      routes: [
        //? 메인 화면
        GoRoute(
          path: "/notice",
          name: "notice",
          pageBuilder: (context, state) {
            return NoTransitionPage(
                key: state.pageKey, child: const NoticePage());
          },
        ),
        GoRoute(
          path: "/edit",
          name: "edit",
          pageBuilder: (context, state) {
            return NoTransitionPage(
                key: state.pageKey, child: const EditPage());
          },
        ),
        GoRoute(
          path: "/setting",
          name: "setting",
          pageBuilder: (context, state) {
            return NoTransitionPage(
                key: state.pageKey, child: const SettingPage());
          },
        ),
      ],
    ),
  ],
);
