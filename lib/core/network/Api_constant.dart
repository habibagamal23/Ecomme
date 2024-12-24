class ApiConstants {
  static const String apiBaseUrl = "https://dummyjson.com";
  static const String login = "$apiBaseUrl/auth/login";
  static const String register = "$apiBaseUrl/users/add";
  static const String categoryList = "$apiBaseUrl/products/category-list";
  static const String product = "$apiBaseUrl/products";
  static const String cart = "$apiBaseUrl/carts";
  static const String endpoindAddcart = "/add";

  /// stripes
  static const String stripePublishableKey =
      "pk_test_51QLO18KCYYcZnriZlyXhnG9ZCL51lgQVnNkTiSDje6oveaCmfxdUNmevP06mmqzdevZTi2GKJBTvsWRcM12u9jOY0043YgS4XM";
  static const String striptApiurl =
      "https://api.stripe.com/v1/payment_intents";
  static const String stripToken =
      "sk_test_51QLO18KCYYcZnriZy6tOCTMspmHTC38AV7zMSfFD73CdQACvjgwNmwIDkFi8SI7D8xDrSfAMmaJlRTwv9PqqIOTI00iZvgjjVX";
}
