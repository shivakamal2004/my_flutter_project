import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../trip.dart';
import '../trip_provider.dart';

class UpcomingPlansScreen extends StatefulWidget {
  const UpcomingPlansScreen({Key? key}) : super(key: key);

  @override
  _UpcomingPlansScreenState createState() => _UpcomingPlansScreenState();
}

class _UpcomingPlansScreenState extends State<UpcomingPlansScreen> {
  // Initialize a DateTime object to store the selected date
  DateTime? _selectedDate;
  final TextEditingController _titleController = TextEditingController();

  // Show the date picker dialog
  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  void _saveTrip() {
    if (_titleController.text.isNotEmpty && _selectedDate != null) {
      final trip = Trip(
        title: _titleController.text,
        date: _selectedDate!,
      );
      Provider.of<TripProvider>(context, listen: false).addTrip(trip);
      _titleController.clear();
      _selectedDate = null;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upcoming Plans'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Set Trip Date:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              readOnly: true,
              decoration: InputDecoration(
                labelText: _selectedDate != null
                    ? '${_selectedDate!.toLocal()}'.split(' ')[0]
                    : 'Select a date',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.calendar_today),
                  onPressed: () => _selectDate(context),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Trip Title',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveTrip,
              child: const Text('Save Trip'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Upcoming Plans has been set. Get Ready',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
