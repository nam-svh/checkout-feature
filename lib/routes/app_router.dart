import 'package:go_router/go_router.dart';
import '../screens/checkout_screen.dart';
import '../screens/not_found_screen.dart';
import '../models/checkout_infor.dart';

class CheckoutRouter {
  static List<GoRoute> get routes => [
    GoRoute(
      path: '/checkout',
      builder: (context, state) {
        final checkoutInfor = state.extra as CheckoutInfor;
        return CheckOutScreen(checkoutInfor: checkoutInfor);
      }
    ),
    GoRoute(
      path: '/not-found',
      builder: (context, state) => const NotFoundScreen(),
    ),
  ];
}
