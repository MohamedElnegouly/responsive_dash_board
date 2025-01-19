import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/dashboard_view.dart';

void main() {
  runApp(const responsive_dashboard());
}

// ignore: camel_case_types
class responsive_dashboard extends StatelessWidget {
  const responsive_dashboard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
      home: DashboardView() ,
    );
  }
}

