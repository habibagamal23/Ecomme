class PaymentIntentInputRequest {
  int amount;
  String currency;
  PaymentIntentInputRequest({required this.amount, required this.currency});

  Map<String, dynamic> toJson() {
    return {"amount": amount*100, "currency": currency};
  }
}
