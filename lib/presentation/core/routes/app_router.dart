import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';
import 'route_name.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: RouteNames.empty,
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(page: LoginRoute.page, path: RouteNames.login),
        AutoRoute(page: IndRecordRoute.page, path: RouteNames.indRecord),
        RedirectRoute(
          path: '*',
          redirectTo: RouteNames.empty,
        ),
      ];
}
