import 'package:flight_booking/core/colors.dart';
import 'package:flight_booking/presentation/pay_/screen_pay.dart';
import 'package:flight_booking/presentation/search_list/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ScreenResults extends StatelessWidget {
  const ScreenResults({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: CustomAppBar(size: size),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 15, bottom: 40),
            child: Text(
              "Select your departure",
              style: TextStyle(
                  fontSize: size.width * 0.060,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey.shade600),
            ),
          ),
          const SizedBox(
            height: 05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Dates(
                date: 'Sat, 03 Feb',
                rate: 'INR 7,000',
              ),
              Dates(
                date: 'Sat, 04 Feb',
                rate: 'INR 7,000',
                color: appTextColor,
              ),
              const Dates(
                date: 'Sat, 05 Feb',
                rate: 'INR 7,000',
              ),
            ],
          ),
          const Divider(),
          Expanded(
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {

                          return const ScreenPay();
                          
                        },));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: size.height * 0.2,
                          width: size.width * 0.8,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const ShowFlightTime(),
                                SizedBox(
                                  height: size.height * 0.01,
                                ),
                                const TimeLocation(),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text('QR0010 - 737',
                                    style: TextStyle(
                                        color: Colors.grey.shade800,
                                        fontSize: size.width * 0.03)),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Business class',
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 255, 138, 21),
                                          fontSize: size.width * 0.03),
                                    ),
                                    Text(
                                      'INR 8,000+',
                                      style: TextStyle(
                                          fontSize: size.width > 500
                                              ? 20
                                              : size.width * 0.04),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: 5))
        ],
      ),
    );
  }
}

class TimeLocation extends StatelessWidget {
  const TimeLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'DOH',
          style: TextStyle(
              color: Colors.grey.shade600, fontWeight: FontWeight.w400),
        ),
        Text(
          '1h 5m',
          style: TextStyle(
              color: Colors.grey.shade600, fontWeight: FontWeight.w400),
        ),
        Text(
          'AUH',
          style: TextStyle(
              color: Colors.grey.shade600, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}

class ShowFlightTime extends StatelessWidget {
  const ShowFlightTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text('01:50'),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Divider(
            color: Colors.grey.shade500,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Icon(Icons.flight),
        const SizedBox(
          width: 5,
        ),
        Expanded(
            child: Divider(
          color: Colors.grey.shade500,
        )),
        const SizedBox(
          width: 5,
        ),
        const Text('01:50'),
      ],
    );
  }
}

class Dates extends StatelessWidget {
  const Dates({super.key, required this.date, required this.rate, this.color});
  final String date;
  final String rate;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          date,
          style: TextStyle(color: color ?? Colors.grey.shade500),
        ),
        Text(
          rate,
          style: TextStyle(color: color ?? Colors.grey.shade500),
        )
      ],
    );
  }
}
