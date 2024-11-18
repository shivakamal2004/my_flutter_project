import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  bool _enableNotifications = true;
  String _notificationStyle = 'Default';
  String _notificationSound = 'Default Sound';
  bool _doNotDisturb = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SwitchListTile(
              title: const Text('Enable Notifications'),
              value: _enableNotifications,
              onChanged: (value) {
                setState(() {
                  _enableNotifications = value;
                });
              },
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Notification Style',
              ),
              value: _notificationStyle,
              items: const [
                DropdownMenuItem<String>(
                  value: 'Default',
                  child: Text('Default'),
                ),
                DropdownMenuItem<String>(
                  value: 'Persistent',
                  child: Text('Persistent'),
                ),
                DropdownMenuItem<String>(
                  value: 'Banners',
                  child: Text('Banners'),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _notificationStyle = value!;
                });
              },
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Notification Sound',
              ),
              value: _notificationSound,
              items: const [
                DropdownMenuItem<String>(
                  value: 'Default Sound',
                  child: Text('Default Sound'),
                ),
                DropdownMenuItem<String>(
                  value: 'Sound 1',
                  child: Text('Sound 1'),
                ),
                DropdownMenuItem<String>(
                  value: 'Sound 2',
                  child: Text('Sound 2'),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _notificationSound = value!;
                });
              },
            ),
            const SizedBox(height: 10),
            SwitchListTile(
              title: const Text('Do Not Disturb'),
              value: _doNotDisturb,
              onChanged: (value) {
                setState(() {
                  _doNotDisturb = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
