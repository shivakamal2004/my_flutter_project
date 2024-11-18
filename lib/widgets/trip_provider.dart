import 'package:flutter/material.dart';
import 'package:travel_app_by_msk/widgets/trip.dart';

class TripProvider with ChangeNotifier {
  List<Trip> _trips = [];

  List<Trip> get trips => _trips;

  void addTrip(Trip trip) {
    _trips.add(trip);
    notifyListeners();
  }

  void updateTrip(Trip trip) {
    int index = _trips.indexWhere((t) => t.date == trip.date);
    if (index != -1) {
      _trips[index] = trip;
      notifyListeners();
    }
  }
}
