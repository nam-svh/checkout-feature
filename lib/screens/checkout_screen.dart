import 'package:flutter/material.dart';
import 'package:share_models/modes/checkout_infor.dart';

class CheckOutScreen extends StatelessWidget {
  final CheckoutInfor checkoutInfor;
  const CheckOutScreen({super.key, this.checkoutInfor= const CheckoutInfor()});

  @override
  Widget build(BuildContext context) {
    debugPrint(checkoutInfor.toString());
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Checkout Infor'),
              Text('Total Price: ${checkoutInfor.totalPrice}'),
              Text('Total Quantity: ${checkoutInfor.totalQuantity}'),
              Text('Total Discount: ${checkoutInfor.totalDiscount}'),
              Text('Total After Discount: ${checkoutInfor.totalAfterDiscount}'),
            ],
          ),
        ),
      );
  }
}
