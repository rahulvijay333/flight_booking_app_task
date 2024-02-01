import 'package:flight_booking/core/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'DOH',
                  style: TextStyle(
                      fontSize: size.width * 0.05,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                SizedBox(
                  width: size.width * 0.02,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
                SizedBox(
                  width: size.width * 0.02,
                ),
                Text(
                  'AUH',
                  style: TextStyle(
                      fontSize: size.width * 0.05,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                )
              ],
            ),
            Text(
              'Modify search',
              style:
                  TextStyle(fontSize: size.width * 0.03, color: appTextColor),
            )
          ],
        ),
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ))
      ],
    );
  }
}