import 'package:flutter_modular/flutter_modular.dart';
import 'core/utilities/check_auth_status.dart';
import 'core/utilities/guards/auth_guard.dart';
import 'core/utilities/guards/redirect_guard.dart';
import 'features/auth/auth_bloc.dart';
import 'features/auth/auth_page.dart';
import 'features/dashboard/dashboard_page.dart';
import 'features/not_found_page/not_found_page.dart';
import 'features/profile/profile_page.dart';

class AppRouteModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton(
            (i) => AuthStore(isAuthValid(authBloc.getToken()))),
        Bind.lazySingleton(
            (i) => RedirectStore(isAuthUnValid(authBloc.getToken()))),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/login',
            child: (context, args) => const AuthPage(),
            guards: [RedirectGuard()]
        ),
        ChildRoute('/',
            child: (context, args) => const DashboardPage(),
        ),
        ChildRoute('/profile',
            child: (context, args) => const ProfilePage(),
            guards: [AuthGuard()]),
        WildcardRoute(child: (context, args) => const NotFoundPage()),
      ];
}
// Note: we can navigate each other -> Modular.to.navigate('/<page>')
