import 'package:flight_booking/presentation/payment_details/widgets/radio_button.dart';
import 'package:flutter/material.dart';

class ScreenPayment extends StatelessWidget {
  const ScreenPayment({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        title: const Text(
          'Payment Options',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select payment options',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade600,
                    fontSize: size.width > 500 ? 18 : size.width * 0.04),
              ),
              customRadio('UPI', false),
              const Divider(),
              customRadio('Credit / Debit', true),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      color: Colors.transparent.withOpacity(0.1),
                      child: const PaymentfieldCustom(
                        hint: 'James Alex',
                        label: 'Card Holder',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      color: Colors.transparent.withOpacity(0.1),
                      child: const PaymentfieldCustom(
                        hint: '4111 1111 1111 1111',
                        label: 'Card Number',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            color: Colors.transparent.withOpacity(0.1),
                            child: const PaymentfieldCustom(
                              hint: '12/19',
                              label: 'Expiry Date',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            color: Colors.transparent.withOpacity(0.1),
                            child: const PaymentfieldCustom(
                              hint: '000',
                              label: 'CVV',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
               
                ],
              ),
                 const Spacer(),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.pink[900],
                          borderRadius: BorderRadius.circular(18)),
                      height: 50,
                      width: size.width * 0.8,
                      child: const Center(
                        child: Text(
                          'Pay',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentfieldCustom extends StatelessWidget {
  const PaymentfieldCustom({
    super.key,
    required this.hint,
    required this.label,
  });

  final String hint;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelStyle: const TextStyle(color: Colors.grey),
          labelText: label,
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.grey),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none),
    );
  }
}
