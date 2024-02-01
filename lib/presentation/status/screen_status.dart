import 'package:flight_booking/core/colors.dart';
import 'package:flight_booking/presentation/search_list/results_screen.dart';
import 'package:flutter/material.dart';

class ScreenStatus extends StatefulWidget {
  const ScreenStatus({super.key});

  @override
  State<ScreenStatus> createState() => _ScreenStatusState();
}

class _ScreenStatusState extends State<ScreenStatus> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) {
            return const ScreenResults();
          },
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
            Icon(
              Icons.flight_takeoff,
              color: appTextColor,
              size: 50,
            ),
            Center(
              child: SizedBox(
                width: size.width * 0.7,
                child: Text(
                  'We are searching for best prices',
                  style: TextStyle(
                      fontSize: size.width * 0.07, fontWeight: FontWeight.w300),
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [Text('Doha'), Text('DOH')],
                ),
                Column(
                  children: [Icon(Icons.arrow_forward), Text('04 Feb 2024')],
                ),
                Column(
                  children: [Text('Abu Dhabi'), Text('AUH')],
                ),
              ],
            ),
            const Text('1 passenger, Business / First'),
            LinearProgressIndicator(backgroundColor: appTextColor!.withOpacity(0.1),
              color: appTextColor,
            )
          ],
        ),
      ),
    );
  }
}
