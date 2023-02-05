import 'package:flutter/material.dart';

class TapAnimation extends StatefulWidget {
  const TapAnimation({super.key});

  @override
  State<TapAnimation> createState() => _TapAnimationState();
}

class _TapAnimationState extends State<TapAnimation> {
  bool animate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(600, 40, 200, 0),
              child: Text(
                "WATER TAP ANIMATION",
                style: TextStyle(fontSize: 32),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: GestureDetector(
                onDoubleTap: () {},
                onTap: startAnimation,
                child: Positioned(
                    bottom: 300,
                    child: Image(
                      image: AssetImage('images/tap.png'),
                      height: 150,
                      width: 150,
                    )),
              ),
            ),
            TappAnimation(),
            AnimatedPositioned(
                duration: Duration(milliseconds: 2500),
                bottom: animate ? -100 : 280,
                left: 685,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 3000),
                  opacity: animate ? 1 : 0,
                  child: Image(
                    image: AssetImage('images/waterdrop.png'),
                    height: 50,
                    width: 50,
                  ),
                )),
            AnimatedPositioned(
                duration: Duration(milliseconds: 3000),
                bottom: animate ? -100 : 280,
                left: 685,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 3500),
                  opacity: animate ? 1 : 0,
                  child: Image(
                    image: AssetImage('images/waterdrop.png'),
                    height: 50,
                    width: 50,
                  ),
                )),
            AnimatedPositioned(
                duration: Duration(milliseconds: 3800),
                bottom: animate ? -100 : 280,
                left: 685,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 4200),
                  opacity: animate ? 1 : 0,
                  child: Image(
                    image: AssetImage('images/waterdrop.png'),
                    height: 50,
                    width: 50,
                  ),
                )),
            AnimatedPositioned(
                duration: Duration(milliseconds: 4300),
                bottom: animate ? -100 : 280,
                left: 685,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 4800),
                  opacity: animate ? 1 : 0,
                  child: Image(
                    image: AssetImage('images/waterdrop.png'),
                    height: 50,
                    width: 50,
                  ),
                )),
            AnimatedPositioned(
                duration: Duration(milliseconds: 5400),
                bottom: animate ? -100 : 280,
                left: 685,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 6000),
                  opacity: animate ? 1 : 0,
                  child: Image(
                    image: AssetImage('images/waterdrop.png'),
                    height: 50,
                    width: 50,
                  ),
                )),
          ],
        ),
      ),
    );
  }

  AnimatedPositioned TappAnimation() {
    return AnimatedPositioned(
        duration: Duration(milliseconds: 2000),
        bottom: animate ? -100 : 280,
        left: 685,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: 2500),
          opacity: animate ? 1 : 0,
          child: Center(
            child: Image(
              image: AssetImage('images/waterdrop.png'),
              height: 50,
              width: 50,
            ),
          ),
        ));
  }

  Future startAnimation() async {
    setState(() {
      animate = true;
    });
  }
}
