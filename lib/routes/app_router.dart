import 'package:go_router/go_router.dart';
import '../screens/checkout_screen.dart';
import '../screens/not_found_screen.dart';

class CheckoutRouter {
  static List<GoRoute> get routes => [
    GoRoute(
      path: '/checkout',
      builder: (context, state) => const CheckOutScreen(),
    ),
    GoRoute(
      path: '/not-found',
      builder: (context, state) => const NotFoundScreen(),
    ),
  ];
}
