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
    );
  }
}
