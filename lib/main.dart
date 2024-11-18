import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app_by_msk/widgets/trip_provider.dart';
import 'Pages/dashbaord.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TripProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
