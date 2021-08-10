import 'package:flutter/material.dart';
import 'package:hg_app_2/home/presentation/pages/homepage_home.dart';
import 'package:hg_app_2/player/presentation/widget/bottom_sticky_player.dart';
import 'package:hg_app_2/plus/presentation/pages/homepage_plus.dart';

import '../../player/presentation/pages/homepage_opera.dart';
import 'homepage_scan.dart';

class HomepageTabs extends StatelessWidget {
  const HomepageTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabScreen();
  }
}

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List<Map<String, Widget>>? _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {'page': HomepageHome()},
      {'page': HomepageOpera()},
      // {'page': HomepageScan()},
      {'page': HomepagePlus()},
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages?[_selectedPageIndex]['page'],
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const BottomStickyPlayer(),
          BottomNavigationBar(
            backgroundColor: Theme.of(context).primaryColor,
            onTap: _selectPage,
            unselectedItemColor: Colors.white,
            selectedItemColor: Theme.of(context).accentColor,
            currentIndex: _selectedPageIndex,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Accueil',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'Opéra',
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.qr_code_scanner),
              //   label: 'Scan',
              // ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz),
                label: 'Plus',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
