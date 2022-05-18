import 'package:flutter_modular/flutter_modular.dart';
import 'package:tr_portfolio/features/auth/forget_password/forget_pass_page.dart';
import 'core/utilities/check_auth_status.dart';
import 'core/utilities/guards/auth_guard.dart';
import 'core/utilities/guards/redirect_guard.dart';
import 'features/auth/login/login_bloc.dart';
import 'features/auth/login/login_page.dart';
import 'features/auth/reset_password/reset_pass_page.dart';
import 'features/dashboard/dashboard_page.dart';
import 'features/not_found_page/not_found_page.dart';
import 'features/profile/profile_page.dart';

class AppRouteModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => AuthStore(isAuthValid(loginBloc.getToken()))),
        Bind.lazySingleton(
            (i) => RedirectStore(isAuthUnValid(loginBloc.getToken()))),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/login',
            child: (context, args) => const LoginPage(),
            guards: [RedirectGuard()]),
        ChildRoute('/forget',
            child: (context, args) => const ForgetPassPage(),
            guards: [RedirectGuard()]),
        ChildRoute('/reset',
            child: (context, args) => const ResetPassPage(),
            guards: [RedirectGuard()]),
        ChildRoute(
          '/',
          child: (context, args) => const DashboardPage(),
          // guards: [AuthGuard()]
        ),
        ChildRoute('/profile',
            child: (context, args) => ProfilePage(),
            guards: [AuthGuard()]),
        WildcardRoute(child: (context, args) => const NotFoundPage()),
      ];
}
// Note: we can navigate each other -> Modular.to.navigate('/<page>')
