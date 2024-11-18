import 'package:flutter/material.dart';
import '../Pages/flight_screen.dart';
import '../Pages/hotels_screen.dart';
import '../Pages/restaurants_screen.dart';
import '../Pages/spa_screen.dart';
import '../Pages/train_screen.dart';

class Options extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool selected;

  const Options({required this.icon, required this.title, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          switch (title) {
            case 'Flight':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FlightScreen()),
              );
              break;
            case 'Train':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TrainScreen()),
              );
              break;
            case 'Hotels':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HotelsScreen()),
              );
              break;
            case 'Restaurants':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RestaurantsScreen()),
              );
              break;
            case 'Spa':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SpaScreen()),
              );
              break;
          }
        },
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: selected ? Colors.blue : Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 30),
              Text(title, style: TextStyle(fontSize: 12)),
            ],
          ),
        ),
      ),
    );
  }
}
