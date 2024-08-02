import 'package:dark_app/features/dark%20app/presentation/pages/signin/signin_page.dart';
import 'package:go_router/go_router.dart';

final routers = GoRouter(
  initialLocation: "/signin",
  routes: [
    //? 가입 화면
    GoRoute(
      path: "/signin",
      name: "signin ",
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: SigninPage()),
    ),
  ],
);
