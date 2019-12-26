import 'package:flutter/material.dart';

class PlushWidget extends StatelessWidget {
  PlushWidget(
      {Key key, this.name, this.color1, this.color2, this.plush, this.scale})
      : super(key: key);

  var color1;
  var plush;
  var name;
  var color2;
  var scale;

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Container(
          width: 170,
          height: 120,
          decoration: BoxDecoration(
            color: Color(color1),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
        ),
        Positioned(
          bottom: 1,
          left: 30,
          child: Image.asset(
            plush,
            fit: BoxFit.contain,
            scale: scale,
          ),
        ),
        Positioned(
          top: 80,
          child: Container(
            width: 170,
            height: 40,
            decoration: BoxDecoration(
              color: Color(color2),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    name,
                    style:
                        TextStyle(color: Colors.white, fontFamily: "ITC-bold"),
                  ),
                  Text(
                    "\$35",
                    style:
                        TextStyle(color: Colors.white, fontFamily: "ITC-bold"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
