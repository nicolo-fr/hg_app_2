import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

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
        child: Column(
          children: [
            Row(
              children: [
                Draggable<Square>(
                  child: Square(
                    height: 40,
                    width: 40,
                    color: Colors.amber,
                  ),
                  feedback: Square(
                    height: 80,
                    width: 80,
                    color: Colors.amber,
                  ),
                ),
                Draggable<Container>(
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  feedback: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(40)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              children: [
                DragTarget<Square>(builder: (context, candidates, rejects) {
                  
                  return candidates.length > 0 
                      ? Container(
                          height: 140,
                          width: 140,
                          color: Colors.green,
                        )
                      : Container(
                          height: 140,
                          width: 140,
                          color: Colors.grey,
                        );
                }),
                DragTarget<Container>(
                  builder: (context, candidates, rejects) {
                    return candidates.length > 0
                        ? Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(140),
                              color: Colors.green,
                            ),
                          )
                        : Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(140),
                              color: Colors.grey,
                            ),
                          );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Square extends StatelessWidget {
  const Square({
    Key? key,
    required this.height,
    required this.width,
    required this.color,
  }) : super(key: key);
  final double height;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
    );
  }
}

class Circle extends StatelessWidget {
  const Circle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
