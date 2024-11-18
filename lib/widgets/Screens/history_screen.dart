import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app_by_msk/widgets/Screens/trip_card.dart';
import '../trip_provider.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final trips = context.watch<TripProvider>().trips;

    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
      ),
      body: ListView.builder(
        itemCount: trips.length,
        itemBuilder: (context, index) {
          final trip = trips[index];
          return TripCard(
            title: trip.title,
            date: trip.date.toLocal().toString().split(' ')[0],
            status: trip.status,
            details: trip.details,
          );
        },
      ),
    );
  }
}
