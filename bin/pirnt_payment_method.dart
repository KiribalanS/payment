import './payment_methods.dart';

class PirntPaymentMethod {
  Payment payment;
  PirntPaymentMethod({
    required this.payment,
  });
  void printPaymentMethod() {
    print(payment.toString());
  }

  //do other operations with payments
}
