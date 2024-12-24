import 'package:flutter/material.dart';

import '../../../payment/ui/widgets/PaymentButtonConsumer.dart';
import '../widgets/adressBulider.dart';

class Paymentscreen extends StatelessWidget {
  const Paymentscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Delivery"),
          Adressbulider(),
          SizedBox(
            height: 40,
          ),
          Paymentbuttonconsumer(
            ammount: 2000,
          )
        ],
      ),
    );
  }
}
