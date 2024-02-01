import 'package:flight_booking/presentation/home/widgets/location_widget.dart';
import 'package:flutter/material.dart';

class TripDetailsWidget extends StatelessWidget {
  const TripDetailsWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.3,
      width: size.width * 0.90,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.shade400)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomLocationWidget(
            size: size,
            direction: 'From',
            from: 'Doha',
            code: 'DOH',
          ),
          Row(
            children: [
              const Expanded(
                child: Divider(),
              ),
              SizedBox(
                width: size.width * 0.02,
              ),
              const Icon(
                Icons.arrow_downward_outlined,
                color: Colors.grey,
                size: 25,
              ),
              SizedBox(
                width: size.width * 0.05,
              )
            ],
          ),
          CustomLocationWidget(
            size: size,
            direction: 'To',
            from: 'Abu Dhabi',
            code: 'AUH',
          ),
        ],
      ),
    );
  }
}