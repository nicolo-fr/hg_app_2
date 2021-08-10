
import 'package:flutter/material.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({
    Key? key, required this.imagePath,
  }) : super(key: key);

final String imagePath;

  @override
  Widget build(BuildContext context) {
    final deviceData = MediaQuery.of(context);
    return Container(
      height: deviceData.size.height - 317,
      width: deviceData.size.width,
      child: FittedBox(
        fit: BoxFit.cover,
        child: Image.asset(imagePath),
      ),
    );
  }
}