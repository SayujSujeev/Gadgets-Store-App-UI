import 'package:flutter/material.dart';
import 'package:gadgets_store_app/screen/home/home_screen.dart';
import 'package:gadgets_store_app/screen/navigation_drawer/componts/drawer_body.dart';

class NavigationDrawerScreen extends StatefulWidget {
  @override
  _NavigationDrawerScreenState createState() => _NavigationDrawerScreenState();
}

class _NavigationDrawerScreenState extends State<NavigationDrawerScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Duration duration = Duration(milliseconds: 500);
  Animation<double> scaleAnimation;

  bool drawerOpen = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: duration);
    scaleAnimation =
        Tween<double>(begin: 1.0, end: 0.8).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
      body: Stack(
        children: [
          DrawerBody(),
          AnimatedPositioned(
            duration: duration,
            top: 0,
            bottom: 0,
            left: drawerOpen ?  size.width * 0.55 : 0.0,
            right: drawerOpen ? size.width * -0.45 : 0.0,
            child: ScaleTransition(
              scale:scaleAnimation,
              child: GestureDetector(
                onTap: (){
                  if(drawerOpen){
                    setState(() {
                      drawerOpen = false;
                      _animationController.reverse();
                    });
                  }
                },
                child: AbsorbPointer(
                  absorbing: drawerOpen,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(drawerOpen ? 50.0 : 0.0),
                    child: HomeScreen(
                      drawerCallback: (){
                        setState(() {
                          drawerOpen = true;
                          _animationController.forward();
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
