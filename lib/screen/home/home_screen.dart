import 'package:flutter/material.dart';
import 'package:gadgets_store_app/screen/home/components/background_image.dart';
import 'package:gadgets_store_app/screen/home/components/bottom_container.dart';
import 'package:gadgets_store_app/screen/home/components/custom_app_bar.dart';
import 'package:gadgets_store_app/screen/home/components/main_texts.dart';

class HomeScreen extends StatefulWidget {

  final Function drawerCallback;

  HomeScreen({@required this.drawerCallback});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomAppBar(widget.drawerCallback),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MainTexts(),
                  BottomContainer(),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
