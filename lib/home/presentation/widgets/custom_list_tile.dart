
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {Key? key,
      required this.title,
      required this.onTap,
      required this.description})
      : super(key: key);

  final String title;
  final String description;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xffF7F7F7),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
            child: Row(
              children: [
                Flexible(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        description,
                        style: const TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Center(
                    child: Container(
                      height: 34,
                      width: 34,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          // color: Theme.of(context).accentColor.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(40)),
                      child: Icon(
                        Icons.visibility,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
