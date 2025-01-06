import 'package:flutter/material.dart';
import 'routes/app_router.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Checkout Feature',
       routerConfig: GoRouter(
      routes: CheckoutRouter.routes,
      initialLocation: '/checkout',
    ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
   
    );
  }
}
