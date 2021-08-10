import 'package:flutter/material.dart';
import 'package:hg_app_2/core/presentation/custom_leading_widget_appbar.dart';
import 'dart:math' as math;

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
      body: SafeArea(
        child: Center(
          child: Container(),
        ),
      ),
    );
  }
}


