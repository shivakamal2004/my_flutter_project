import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: const Icon(Icons.privacy_tip),
            title: const Text('Privacy'),
            onTap: () {
              // Handle privacy tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.location_on),
            title: const Text('Location'),
            onTap: () {
              // Handle location tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.safety_check),
            title: const Text('Safety and Emergency'),
            onTap: () {
              // Handle safety and emergency tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            onTap: () {
              // Handle about tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.privacy_tip),
            title: const Text('Privacy and Policy'),
            onTap: () {
              // Handle privacy and policy tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text('Rate the App'),
            onTap: () {
              // Handle rate the app tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.feedback),
            title: const Text('Feedback'),
            onTap: () {
              // Handle feedback tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('Help Center'),
            onTap: () {
              // Handle help center tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.translate),
            title: const Text('Language'),
            onTap: () {
              // Handle language tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.chat),
            title: const Text('Chat with Us'),
            onTap: () {
              // Handle chat with us tap
            },
          ),
        ],
      ),
    );
  }
}
