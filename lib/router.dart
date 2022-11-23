import 'package:fluro/fluro.dart';

import 'components/Auth/index.dart';

void defineRoutes(FluroRouter router) {
  router.define("/", handler: Handler(handlerFunc: (context, params) {
    return const ByPass();
  }));
  router.define("/SignIn", handler: Handler(handlerFunc: (context, params) {
    return const SignIn();
  }));
  router.define("/LoggedInUserDetails",
      handler: Handler(handlerFunc: (context, params) {
    return const LoggedInUserDetails();
  }));
  // it is also possible to define the route transition to use
  // router.define("users/:id", handler: usersHandler, transitionType: TransitionType.inFromLeft);
}
