import 'package:ecomm59/core/widgets/CustomButton.dart';
import 'package:ecomm59/core/widgets/PrettyLoadingWidget.dart';
import 'package:ecomm59/featuers/payment/logic/payment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/DialogManager.dart';

class Paymentbuttonconsumer extends StatelessWidget {
  double ammount;

  Paymentbuttonconsumer({super.key, required this.ammount});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(builder: (context, state) {
      if (state is PaymentLoading) {
        return PrettyLoadingWidget();
      }
      return CustomButton(
          text: "Payment",
          onPressed: () {
            context.read<PaymentCubit>().makePayment(ammount);
          });
    }, listener: (context, state) {
      if (state is PaymentSuccess) {
        DialogManager.showSuccessDialog(
            context: context,
            title: "payment Succes ",
            description: "Your transaction is done ",
            onPress: () {});
      }

      if (state is PaymentError) {
        DialogManager.showErrorDialog(
            context: context,
            title: "payment Error ",
            description: "Your transaction has error ${state.Error} ",
            onPress: () {});
      }
    });
  }
}
