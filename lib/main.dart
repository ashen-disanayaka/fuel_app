import 'package:flutter/material.dart';
import 'package:fuel_app/customer/register_customer.dart';
import 'package:fuel_app/customer/station_find.dart';
import 'package:fuel_app/fuel_Operater/fuel_update.dart';
import 'package:fuel_app/landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( ),
      home:  const Landing(),
    );
  }
}
