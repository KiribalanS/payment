enum PaymentMethods {
  paypal,
  upi,
  creditCard,
  debitCard,
}

abstract class Payment {
  double amt;
  String email;
  String name;
  PaymentMethods payments;
  Payment({
    required this.amt,
    required this.email,
    required this.name,
    required this.payments,
  });
  void makePayment();
  @override
  String toString() =>
      'Payment(Amount : $amt, Email : $email, Name : $name, Payment method : $payments)';
}

class PaypalPayment extends Payment {
  PaypalPayment({
    required super.amt,
    required super.email,
    required super.name,
    required super.payments,
    required this.payPalId,
  });
  String payPalId;

  @override
  void makePayment() {
    print("Amount payable : $amt");
    print("through payment method : $payments");
    print("through payment method : $payPalId");
  }

  @override
  String toString() =>
      'PaypalPayment(Amount : $amt,\n Email : $email,\n Name : $name,\n Payment method : $payments,\n PayPal id: $payPalId)';
}

class UPIPayment extends Payment {
  UPIPayment({
    required super.amt,
    required super.email,
    required super.name,
    required super.payments,
    required this.upiID,
  });
  String upiID;
  @override
  void makePayment() {
    print("Amount payable : $amt");
    print("through payment method : $payments");
    print("through payment method : $upiID");
  }

  @override
  String toString() =>
      'UPIPayment(Amount : $amt,\n Email : $email,\n Name : $name,\n Payment method : $payments,\n UPI id: $upiID)';
}

class CreditCardPayment extends Payment {
  int cardNumber;
  int cvv;
  int pin;

  CreditCardPayment({
    required this.cardNumber,
    required this.cvv,
    required this.pin,
    required super.amt,
    required super.email,
    required super.name,
    required super.payments,
  });
  @override
  void makePayment() {
    print("Amount payable : $amt");
    print("through payment method : $payments");
    print("through payment method : $cardNumber");
  }

  @override
  String toString() =>
      'CreditCardPayment(Amount : $amt,\n Email : $email,\n Name : $name,\n Payment method : $payments,\n cardNumber: $cardNumber,\n cvv: $cvv,\n pin: $pin)';
}

class DebitCardPayment extends Payment {
  int cardNumber;
  int cvv;
  int pin;
  String expiry;

  DebitCardPayment({
    required this.cardNumber,
    required this.cvv,
    required this.pin,
    required super.amt,
    required super.email,
    required super.name,
    required super.payments,
    required this.expiry,
  });
  @override
  void makePayment() {
    print("Amount payable : $amt");
    print("through payment method : $payments");
    print("through payment method : $cardNumber");
  }

  @override
  String toString() =>
      'DebitCardPayment(Amount : $amt,\n Email : $email,\n Name : $name,\n Payment method : $payments,\n cardNumber: $cardNumber,\n cvv: $cvv,\n pin: $pin,\n expiry : $expiry)';
}
