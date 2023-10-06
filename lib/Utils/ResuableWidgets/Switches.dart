import 'package:flutter/cupertino.dart';

class ReusableCupertinoSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final Color activeColor;
  final Color trackColor;
  final Color thumbColor;
  final Color focusColor;
  final Color hoverColor;
  // final double splashRadius;

  ReusableCupertinoSwitch({
    required this.value,
    required this.onChanged,
    this.activeColor = CupertinoColors.activeGreen,
    this.trackColor = CupertinoColors.inactiveGray,
    this.thumbColor = CupertinoColors.white,
    this.focusColor = CupertinoColors.activeBlue,
    this.hoverColor = CupertinoColors.activeBlue,
    // this.splashRadius = 14.0,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: value,
      onChanged: onChanged,
      activeColor: activeColor,
      trackColor: trackColor,
      thumbColor: thumbColor,
      focusColor: focusColor,
    );
  }
}
