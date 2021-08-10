
import 'package:flutter/material.dart';

class ActsTabs extends StatefulWidget {
  const ActsTabs({
    Key? key,
    required this.controller,
    required this.currentPage,
  });

  final PageController controller;
  final int currentPage;

  @override
  _ActsTabsState createState() => _ActsTabsState();
}

class _ActsTabsState extends State<ActsTabs> {
  // int _selectedAct = 1;
  @override
  Widget build(BuildContext context) {
    int _selectedAct = widget.currentPage + 1;

    return Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: Row(
        children: [
          ActTab(
            text: 'Acte I',
            actNumber: 1,
            selectedAct: _selectedAct,
            onTap: () {
              widget.controller.jumpToPage(0);

              setState(() {
                _selectedAct = widget.currentPage + 1;
              });
            },
          ),
          ActTab(
            text: 'Acte II',
            actNumber: 2,
            selectedAct: _selectedAct,
            onTap: () {
              widget.controller.jumpToPage(1);

              setState(() {
                _selectedAct = widget.currentPage + 1;
              });
            },
          ),
          ActTab(
            text: 'Acte III',
            actNumber: 3,
            selectedAct: _selectedAct,
            onTap: () {
              widget.controller.jumpToPage(2);

              setState(() {
                _selectedAct = widget.currentPage + 1;
              });
            },
          ),
        ],
      ),
    );
  }
}

class ActTab extends StatelessWidget {
  final int actNumber;
  final String text;
  final int selectedAct;
  final void Function() onTap;

  const ActTab({
    Key? key,
    required this.actNumber,
    required this.text,
    required this.selectedAct,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        width: 88,
        height: 48,
        child: Text(
          text,
          style: TextStyle(
            fontWeight:
                selectedAct == actNumber ? FontWeight.bold : FontWeight.normal,
            fontSize: 16,
            color: selectedAct == actNumber
                ? Theme.of(context).accentColor
                : Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
