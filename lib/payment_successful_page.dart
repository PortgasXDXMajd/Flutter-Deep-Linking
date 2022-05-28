import 'package:flutter/material.dart';

class PaymentSuccessfulPage extends StatelessWidget {
  const PaymentSuccessfulPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Payment was successful"),
      ),
    );
  }
}
