import 'package:ecomm59/core/network/ApiResult.dart';

import '../models/PaymentIntentInputRequest.dart';
import '../models/PaymentIntentModel.dart';

abstract class PaymentRepo {
  /// 1 - api
  Future<ApiResult<PaymentIntentResponse>> createPayment(
      PaymentIntentInputRequest input);

  /// initPaymentSheet
  Future<void> initPaymentSheet(String clientSecret);
  Future<void> displayPaymentSheet();
}
