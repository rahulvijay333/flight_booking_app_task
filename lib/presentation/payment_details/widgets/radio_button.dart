import 'package:flight_booking/core/colors.dart';
import 'package:flutter/material.dart';

Widget customRadio(String label,bool show) {

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Radio<String>(
         activeColor:  appTextColor  ,
          value: label,
          groupValue: show ? label : 'random',
          onChanged: (String? value) {
           
          },
        ),
        Text(label),
      ],
    );
  }