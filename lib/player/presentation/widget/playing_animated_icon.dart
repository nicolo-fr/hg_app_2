import 'package:flutter/material.dart';

class PlayingAnimatedIcon extends StatelessWidget {
  const PlayingAnimatedIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 6, bottom: 6),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          color: Colors.transparent,
          // color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(24)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          CustomSizeTransition(
            milliseconds: 400,
            lowerBound: 0.3,
            upperBound: 0.7,
          ),
          SizedBox(
            width: 1.5,
          ),
          CustomSizeTransition(
            milliseconds: 450,
            lowerBound: 0.4,
            upperBound: 1,
          ),
          SizedBox(
            width: 1.5,
          ),
          CustomSizeTransition(
            milliseconds: 420,
            lowerBound: 0.4,
            upperBound: 0.75,
          ),
        ],
      ),
    );
  }
}

class CustomSizeTransition extends StatefulWidget {
  const CustomSizeTransition(
      {Key? key,
      required this.lowerBound,
      required this.upperBound,
      required this.milliseconds})
      : super(key: key);

  final double lowerBound;
  final double upperBound;
  final int milliseconds;

  @override
  _CustomSizeTransitionState createState() => _CustomSizeTransitionState();
}

class _CustomSizeTransitionState extends State<CustomSizeTransition>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      lowerBound: widget.lowerBound,
      upperBound: widget.upperBound,
      vsync: this,
      duration: Duration(milliseconds: widget.milliseconds),
    )..repeat(
        reverse: true,
      );
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOut,
      ),
      child: Container(
        height: 13,
        width: 3,
        // color: Colors.white,
        color: Theme.of(context).accentColor,
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
