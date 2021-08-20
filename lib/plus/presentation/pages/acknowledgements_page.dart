import 'package:flutter/material.dart';

class AcknowledgementsPage extends StatelessWidget {
  const AcknowledgementsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Remerciements',
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black87,
        //This is a required parameter to show the foreground color
        backwardsCompatibility: false,
        elevation: 0,
      ),
      body: const SafeArea(
        child: Center(
          child: Text('Remerciements'),
        ),
      ),
    );
  }
}
