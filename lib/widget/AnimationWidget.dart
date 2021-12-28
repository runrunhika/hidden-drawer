import 'package:flutter/material.dart';

class AnimationWidget extends StatefulWidget {
  @override
  AnimationWidgetState createState() => AnimationWidgetState();
}

class AnimationWidgetState extends State<AnimationWidget> {
  bool menuOpen = false;
  double tranx = 0, trany = 0, scale = 1.0;
  // final number = List.generate(50, (index) => '$index');

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      transform: Matrix4.translationValues(tranx, trany, 0)..scale(scale),
      decoration: BoxDecoration(
          color: Colors.teal[100],
          borderRadius: BorderRadius.circular(menuOpen ? 30 : 0),
          border: Border.all(color: Colors.white)),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              !menuOpen
                  ? IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        scale = 0.6;
                        tranx = size.width - 100;
                        trany = (size.height - size.height * scale) / 2;
                        setState(() {
                          menuOpen = true;
                        });
                      },
                      color: Colors.white,
                    )
                  : IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        scale = 1.0;
                        tranx = 0;
                        trany = 0;
                        setState(() {
                          menuOpen = false;
                        });
                      },
                      color: Colors.white,
                    ),
              IconButton(
                  icon: Icon(Icons.notification_important),
                  onPressed: null,
                  color: Colors.white),
            ],
          ),
        ],
      ),
    );
  }
}
