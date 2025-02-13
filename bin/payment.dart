import './payment_methods.dart';
import './pirnt_payment_method.dart';

void main(List<String> arguments) {
  Payment payPalPayment = PaypalPayment(
    amt: 250.5,
    email: "email@mail.com",
    name: "name",
    payments: PaymentMethods.paypal,
    payPalId: "payPalId",
  );

  Payment upiPayment = UPIPayment(
    amt: 250.5,
    email: "email@mail.com",
    name: "name",
    payments: PaymentMethods.paypal,
    upiID: "user@upi",
  );

  Payment creditCardPayment = CreditCardPayment(
    amt: 250.5,
    email: "email@mail.com",
    name: "name",
    payments: PaymentMethods.paypal,
    cardNumber: 1234567890123456,
    cvv: 666,
    pin: 1234,
  );

  Payment debitCardPayment = DebitCardPayment(
    amt: 250.5,
    email: "email@mail.com",
    name: "name",
    payments: PaymentMethods.paypal,
    cardNumber: 1234567890123456,
    cvv: 666,
    pin: 1234,
    expiry: DateTime(2030).toIso8601String(),
  );

  PirntPaymentMethod pirntPaymentMethod =
      PirntPaymentMethod(payment: payPalPayment);

  pirntPaymentMethod.printPaymentMethod();

  pirntPaymentMethod = PirntPaymentMethod(payment: upiPayment);
  pirntPaymentMethod.printPaymentMethod();

  pirntPaymentMethod = PirntPaymentMethod(payment: creditCardPayment);
  pirntPaymentMethod.printPaymentMethod();

  pirntPaymentMethod = PirntPaymentMethod(payment: debitCardPayment);
  pirntPaymentMethod.printPaymentMethod();
}
