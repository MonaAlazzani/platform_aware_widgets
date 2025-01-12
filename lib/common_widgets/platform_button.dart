import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_aware_widgets_flutter/common_widgets/platform_widget.dart';

class PlatformButton extends PlatformWidget {
  PlatformButton({Key key, this.child, this.color, this.onPressed})
      : super(key: key);
  final Widget child;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget buildCupertinoWidget(BuildContext context) {
    return CupertinoButton(
      child: child,
      color: color,
      pressedOpacity: 0.5,
      onPressed: onPressed,
    );
  }

  @override
  Widget buildMaterialWidget(BuildContext context) {
    return TextButton(
      child: child,
      style: TextButton.styleFrom(backgroundColor: color),
      onPressed: onPressed,
    );
  }
}
