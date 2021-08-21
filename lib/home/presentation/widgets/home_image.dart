
import 'package:flutter/material.dart';
import 'package:hg_app_2/player/core/providers.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({
    Key? key, required this.imagePath,
  }) : super(key: key);

final String imagePath;

  @override
  Widget build(BuildContext context) {
    final deviceData = MediaQuery.of(context);
    final availableHeight = deviceData.size.height - (245 + getTopPaddingHeight(context));
    print('availableHeight: $availableHeight');
    // ignore: sized_box_for_whitespace
    return Container(
      height: availableHeight,
      // height: deviceData.size.height - 317,
      width: deviceData.size.width,
      child: FittedBox(
        fit: BoxFit.cover,
        child: Image.asset(imagePath),
      ),
    );
  }
}