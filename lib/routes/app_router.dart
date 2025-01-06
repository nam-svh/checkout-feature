import 'package:go_router/go_router.dart';
import '../screens/checkout_screen.dart';
import '../screens/not_found_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/checkout',
    errorBuilder: (context, state) => const NotFoundScreen(),
    routes: [
      GoRoute(
        path: '/checkout',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
