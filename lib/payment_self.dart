import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PaymentSelf extends StatefulWidget {
  const PaymentSelf({Key? key}) : super(key: key);

  @override
  State<PaymentSelf> createState() => _PaymentSelfState();
}

class _PaymentSelfState extends State<PaymentSelf> {
  Razorpay razorpay = Razorpay();

  @override
  void initState() {
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    // TODO: implement initState
    super.initState();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Payment Successfull")));
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Payment Failed")));
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet was selected
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Payment by Wallte")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              var options = {
                'key': 'rzp_test_4Y7Nhiv0EAzD3m',
                'amount': 100,
                'name': 'Acme Corp.',
                'description': 'Fine T-Shirt',
                'prefill': {
                  'contact': '8888888888',
                  'email': 'test@razorpay.com'
                }
              };
              razorpay.open(options);
            },
            child: Text("Pay now")),
      ),
    );
  }
}
