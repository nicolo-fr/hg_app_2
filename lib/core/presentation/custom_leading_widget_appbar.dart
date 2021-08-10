
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CustomLeadingWidgetAppBar extends StatelessWidget {
  const CustomLeadingWidgetAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = AutoRouter.of(context);
    return GestureDetector(
      onTap: () {
        appRouter.pop();
      },
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
          height: 12,
          width: 12,
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: const Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}