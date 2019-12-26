import 'package:flutter/material.dart';

class PopWidget extends StatelessWidget {
  PopWidget({Key key, this.name, this.color1, this.color2, this.pop, this.scale})
      : super(key: key);

  var color1;
  var pop;
  var name;
  var color2;
  var scale;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 210,
      decoration: BoxDecoration(
          color: Color(color1), borderRadius: BorderRadius.circular(25)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            pop,
            scale: scale,
          ),
          Container(
            height: 47,
            width: 170,
            decoration: BoxDecoration(
              color: Color(color2),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)),
            ),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    name,
                    style:
                        TextStyle(color: Colors.white, fontFamily: "ITC-bold"),
                  ),
                  Text(
                    "\$10",
                    style:
                        TextStyle(color: Colors.white, fontFamily: "ITC-bold"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
