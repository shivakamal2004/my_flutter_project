import 'package:flutter/material.dart';
import 'package:travel_app_by_msk/widgets/Screens/voice_search.dart';

class VoiceSearchScreen extends StatelessWidget {
  const VoiceSearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Voice Search'),
      ),
      body: const VoiceSearch(),
    );
  }
}
