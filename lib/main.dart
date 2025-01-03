import 'package:flutter/material.dart';

void main() {
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    final orderDetails = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final totalPrice = orderDetails['totalPrice'] ?? 0;
    final totalQuantity = orderDetails['totalQuantity']?? 0;
    final totalDiscount = orderDetails['totalDiscount']??0;
    final totalAfterDiscount = orderDetails['totalAfterDiscount']?? 0;

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text('Checkout feature'),
            Text('Total Price: $totalPrice '),
            Text('Total Quantity: $totalQuantity'),
            Text('Total Discount: $totalDiscount'),
            Text('Total After Discount: $totalAfterDiscount'),
          ],
        ),
      ),
    );
  }
}
