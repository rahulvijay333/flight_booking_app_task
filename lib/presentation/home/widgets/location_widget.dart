import 'package:flight_booking/core/colors.dart';
import 'package:flutter/material.dart';

class CustomLocationWidget extends StatelessWidget {
  const CustomLocationWidget({
    super.key,
    required this.size,
    required this.direction,
    required this.from,
    required this.code,
  });

  final Size size;
  final String direction;
  final String from;
  final String code;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: size.width * 0.75,
        // color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              direction,
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  from,
                  style: TextStyle(
                      color: appTextColor,
                      fontSize: size.width * 0.07,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  code,
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: size.width * 0.07,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '$from international Airport',
              style: TextStyle(fontSize: size.width * 0.03),
            ),
          ],
        ));
  }
}