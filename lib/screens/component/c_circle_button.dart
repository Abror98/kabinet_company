import 'package:flutter/material.dart';

class CCircleButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Color borderColor;
  final double borderWidth;
  final Function onPressed;
  final Widget child;

  const CCircleButton({
    this.width = 80,
    this.height = 80,
    this.color = Colors.blue,
    this.borderColor = Colors.white,
    this.borderWidth = 4,
    this.onPressed,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            width: width,
            height: height,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
        Container(
            width: width * 0.9,
            height: height * 0.9,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              border: Border.all(width: borderWidth, color: borderColor),
            )),
        Material(
          elevation: 4.0,
          shape: CircleBorder(),
          clipBehavior: Clip.hardEdge,
          color: Colors.white,
          child: Ink.image(
            image: AssetImage('assets/image/mobiuz2.png'),
            width: width,
            height: height,
            child: InkWell(
              onTap: () {},
            ),
          ),
        ),

        FlatButton(
            minWidth: width,
            height: height,
            onPressed: onPressed,
            child: child,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(width),
            )),
      ],
    );
  }
}
