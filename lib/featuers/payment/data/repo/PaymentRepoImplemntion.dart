import 'package:dio/dio.dart';
import 'package:ecomm59/core/network/ApiResult.dart';
import 'package:ecomm59/core/network/Api_constant.dart';
import 'package:ecomm59/core/network/apiConsumer.dart';
import 'package:ecomm59/featuers/payment/data/models/PaymentIntentInputRequest.dart';
import 'package:ecomm59/featuers/payment/data/models/PaymentIntentModel.dart';
import 'package:ecomm59/featuers/payment/data/repo/paymentRepo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class PaymentRepoImplmention implements PaymentRepo {
  ApiConsumer apiConsumer;

  PaymentRepoImplmention(this.apiConsumer);

  @override
  Future<ApiResult<PaymentIntentResponse>> createPayment(
      PaymentIntentInputRequest input) async {
    try {
      var data = await apiConsumer.post(
          ApiConstants.striptApiurl, input.toJson(),
          options: Options(
              contentType: Headers.formUrlEncodedContentType,
              headers: {"Authorization": "Bearer ${ApiConstants.stripToken}"}));
      return ApiResult.success(PaymentIntentResponse.fromJson(data));
    } catch (e) {
      return ApiResult.error("Feiled to create payment $e");
    }
  }

  @override
  Future<void> displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  @override
  Future<void> initPaymentSheet(String clientSecret) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
            merchantDisplayName: ' Your Store Demo',
            paymentIntentClientSecret: clientSecret,
            appearance: PaymentSheetAppearance(
              colors: PaymentSheetAppearanceColors(
                background: Colors.lightBlue,
                primary: Colors.blue,
                componentBorder: Colors.red,
              ),
            )));
  }
}
