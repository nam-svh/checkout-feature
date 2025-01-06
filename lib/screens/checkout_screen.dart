import 'package:flutter/material.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final orderDetails = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final totalPrice = orderDetails['totalPrice'] ?? 0;
    final totalQuantity = orderDetails['totalQuantity'] ?? 0;
    final totalDiscount = orderDetails['totalDiscount'] ?? 0;
    final totalAfterDiscount = orderDetails['totalAfterDiscount'] ?? 0;

    debugPrint('Total Price: $totalPrice');
    debugPrint('Total Quantity: $totalQuantity');
    debugPrint('Total Discount: $totalDiscount');
    debugPrint('Total After Discount: $totalAfterDiscount');  

    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
