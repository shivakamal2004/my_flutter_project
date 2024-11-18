import 'package:flutter/material.dart';

class TripCard extends StatelessWidget {
  final String title;
  final String date;
  final String status;
  final String details;

  const TripCard({
    required this.title,
    required this.date,
    required this.status,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Date: $date'),
            Text('Status: $status'),
            Text('Details: $details'),
          ],
        ),
        trailing: Icon(
          status == 'Completed'
              ? Icons.check_circle
              : status == 'Canceled'
              ? Icons.cancel
              : Icons.pending,
          color: status == 'Completed'
              ? Colors.green
              : status == 'Canceled'
              ? Colors.red
              : Colors.yellow,
        ),
      ),
    );
  }
}
