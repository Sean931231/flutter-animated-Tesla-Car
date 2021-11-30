import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tesla_animated_app/constanins.dart';

class DoorLock extends StatelessWidget {
  const DoorLock({
    Key? key,
    required this.press,
    required this.isLock,
  }) : super(key: key);

  // final HomeController _controller;
  final VoidCallback press;
  final bool isLock;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: AnimatedSwitcher(
        duration: defaultDuration,
        // animation for zoom in out
        transitionBuilder: (child, animation) => ScaleTransition(
          scale: animation,
          child: child,
        ),
        // animation for jumping effects
        switchInCurve: Curves.easeInOutBack,
        // add key to svg assets to let flutter know they are not the same widget
        child: isLock
            ? SvgPicture.asset(
                "assets/icons/door_lock.svg",
                key: ValueKey("lock"),
              )
            : SvgPicture.asset(
                "assets/icons/door_unlock.svg",
                key: ValueKey("unlock"),
              ),
      ),
    );
  }
}
