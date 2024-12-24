import 'package:bloc/bloc.dart';
import 'package:ecomm59/featuers/payment/data/models/PaymentIntentInputRequest.dart';
import 'package:ecomm59/featuers/payment/data/repo/paymentRepo.dart';
import 'package:meta/meta.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentRepo paymentRepo;

  PaymentCubit(this.paymentRepo) : super(PaymentInitial());

  Future makePayment(double amount) async {
    emit(PaymentLoading());
    try {
      PaymentIntentInputRequest input =
          PaymentIntentInputRequest(amount: amount.toInt(), currency: "usd");
      // 1- api
      var result = await paymentRepo.createPayment(input);
      if (result.isSuccess) {
        // 2 - initpayment
        await paymentRepo.initPaymentSheet(result.data!.clientSecret!);
        // 3- desiply
        await paymentRepo.displayPaymentSheet();
        emit(PaymentSuccess());
      } else {
        emit(PaymentError(result.error!));
      }
    } catch (e) {
      emit(PaymentError("Error for make payment $e"));
    }
  }
}
