import 'package:flight_booking/core/colors.dart';
import 'package:flight_booking/presentation/payment_details/screen_payment.dart';
import 'package:flutter/material.dart';

class ScreenPay extends StatelessWidget {
  const ScreenPay({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        // automaticallyImplyLeading: false,
        title: const Text(
          'Booking Details',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                padding: const EdgeInsets.all(10),
                width: size.width * 0.8,
                height: size.height * 0.2,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Passenger Details',
                      style: TextStyle(
                          fontSize: size.width * 0.05, color: appTextColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Passenger Name'),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Passport number'),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              width: size.width * 0.8,
              height: size.height * 0.2,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Flight Details',
                    style: TextStyle(
                        fontSize: size.width * 0.05, color: appTextColor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Doha To Abu Dhabi'),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('10:00 - 14:00'),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Seat 4C')
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: GestureDetector(

                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const ScreenPayment();
                  },));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.pink[900],
                      borderRadius: BorderRadius.circular(20)),
                  height: 50,
                  width: size.width * 0.3,
                  child: const Center(
                    child: Text(
                      'Confirm',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
