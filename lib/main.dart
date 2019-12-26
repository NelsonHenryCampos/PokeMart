import 'package:flutter/material.dart';
import 'package:pokemart/components/bottomNav.dart';
import 'package:pokemart/components/plushWidget.dart';
import 'package:pokemart/components/popWidget.dart';
import 'package:pokemart/custom_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: BottomNav(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ClipPath(
                clipper: HomeClipper(),
                child: Container(
                  width: double.infinity,
                  height: 170,
                  color: Color(0xFFB1DCFC).withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 35.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: IconButton(
                            icon: Icon(Custom.menu),
                            onPressed: () {},
                          ),
                        ),
                        Text(
                          "PokéMart",
                          style:
                              TextStyle(fontFamily: "ITC-bold", fontSize: 27),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: IconButton(
                            icon: Icon(Custom.search),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Pops!",
                      style: TextStyle(fontFamily: "ITC-bold", fontSize: 40),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 30),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontFamily: "ITC-bold",
                          fontSize: 20,
                          color: Color(0xFFB1DCFC)),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 30, top: 20),
                height: 210,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    PopWidget(
                      name: "Charmander",
                      pop: 'assets/img/charmander.png',
                      color1: 0xFFFFAD68,
                      color2: 0xFFF66C45,
                      scale: 4.2,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    PopWidget(
                      name: "Squirtle",
                      pop: 'assets/img/squartile.png',
                      color1: 0xFFB4e1FF,
                      color2: 0xFF8EBDED,
                      scale: 4.2,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    PopWidget(
                      name: "Bulbasaur",
                      pop: 'assets/img/bulba.png',
                      color1: 0xFFD3EEE5,
                      color2: 0xFF96CFBC,
                      scale: 3.2,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    PopWidget(
                      name: "Pikachu",
                      pop: 'assets/img/pikachu.png',
                      color1: 0xFFFFF0A5,
                      color2: 0xFFFFC130,
                      scale: 4.2,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Plush Toys",
                        style: TextStyle(fontFamily: "ITC-bold", fontSize: 40),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 30),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "See all",
                        style: TextStyle(
                            fontFamily: "ITC-bold",
                            fontSize: 20,
                            color: Color(0xFFB1DCFC)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 60, left: 15, bottom: 30),
                child: Row(
                  children: <Widget>[
                   PlushWidget(
                     color1: 0xFFFFF9A5,
                     color2: 0xFFFFE534,
                     scale: 2.9,
                     plush: 'assets/img/pkp.png',
                     name: 'Pikachu',
                   ),
                     SizedBox(
                      width: 10,
                    ),
                   PlushWidget(
                     color1: 0xFFA5F5E3,
                     color2: 0xFF42CBAA,
                     scale: 3.6,
                     plush: 'assets/img/rowletplush.png',
                     name: 'Pikachu',
                   ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HomeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, size.height);
    path.quadraticBezierTo(7, size.height - 58, 70, size.height - 58);
    path.lineTo(size.width - 40, size.height - 58);
    path.quadraticBezierTo(
        size.width, size.height - 58, size.width, size.height - 100);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
