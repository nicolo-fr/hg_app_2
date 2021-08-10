import 'package:flutter/material.dart';
import 'package:hg_app_2/core/routes/app_router.gr.dart';

class AppWidget extends StatelessWidget {
  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Hansel & Gretel',
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: const Color(0xffE2912F),
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
          headline1: const TextStyle(
            fontSize: 48,
            fontFamily: 'AmaticSC',
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          headline2: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
