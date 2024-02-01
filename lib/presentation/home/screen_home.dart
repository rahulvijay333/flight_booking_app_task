import 'package:flight_booking/core/colors.dart';
import 'package:flight_booking/presentation/home/widgets/trip1.dart';
import 'package:flight_booking/presentation/home/widgets/trip2.dart';
import 'package:flight_booking/presentation/search_list/results_screen.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Booking',
          style: TextStyle(
              fontSize: size.width * 0.042,
              color: Colors.black,
              fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 15, bottom: 40),
            child: Text(
              "Let's start your trip",
              style: TextStyle(
                  fontSize: size.width * 0.070,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey.shade600),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Return'),
              Text(
                'One-way',
                style: TextStyle(color: Colors.pink[900]),
              ),
              const Text('Mulit-city')
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: TripDetailsWidget(size: size),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          Center(
            child: TripDetailsWidget2(size: size),
          ),
          const Spacer(),
          Center(
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const ScreenResults();
                    },
                  ));
                },
                child: SearchFlightButton(size: size)),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

class SearchFlightButton extends StatelessWidget {
  const SearchFlightButton({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.pink[900], borderRadius: BorderRadius.circular(20)),
      height: 50,
      width: size.width * 0.9,
      child: const Center(
        child: Text(
          'Search flights',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
