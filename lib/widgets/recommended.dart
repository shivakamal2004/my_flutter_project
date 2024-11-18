import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Recommended extends StatelessWidget {
  final String url;
  final String place;
  final double latitude;
  final double longitude;

  const Recommended({
    required this.url,
    required this.place,
    required this.latitude,
    required this.longitude,
  });

  void _openMap(double latitude, double longitude) async {
    final String googleUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not launch $googleUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _openMap(latitude, longitude),
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        child: Column(
          children: [
            Image.asset(
              url,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 5),
            Text(place),
          ],
        ),
      ),
    );
  }
}
