import 'package:flutter/material.dart';

class TripDetailsWidget2 extends StatelessWidget {
  const TripDetailsWidget2({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.15,
      width: size.width * 0.90,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.shade400)),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
         CustomLocationWidget2(size: size, direction: 'Departure', date: '04 FEB 2024'),
        const Divider(),

        const SizedBox(height: 10,),
        SizedBox(
          width: size.width * 0.75,
          // color: Colors.red,
          child: 
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
            children: [
            Text('1 Passenger',       style: TextStyle(
                 
                  fontSize: size.width * 0.035,
                  fontWeight: FontWeight.w400),),
            Text('Buisness / Flight',       style: TextStyle(
                 
                  fontSize: size.width * 0.035,
                  fontWeight: FontWeight.w400),)
          ],),
        )
         
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';

class CustomLocationWidget2 extends StatelessWidget {
  const CustomLocationWidget2({
    super.key,
    required this.size,
    required this.direction, required this.date,
  
  });

  final Size size;
  final String direction;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width * 0.75,
        // color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Departure',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '04 DEB 2024',
              style: TextStyle(
                 
                  fontSize: size.width * 0.035,
                  fontWeight: FontWeight.w400),
            ),
          
          ],
        ));
  }
}