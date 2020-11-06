import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gadgets_store_app/constants/constants.dart';

class DrawerBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: red,
      body: Padding(
        padding: EdgeInsets.only(
          left: appPadding,
          top: appPadding * 2,
          bottom: appPadding * 3,
        ),
        child: Container(
          width: size.width * 0.45,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.clear_rounded,color: white,),
              Text('Hello,\nSayuj Sujeev',style: TextStyle(
                color: white,
                fontSize: 20,
              ),),
              Container(
                height: size.height * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.home_rounded,color: yellow,),
                        SizedBox(width: 10,),
                        Text('Home',style: TextStyle(color: white),)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.person_rounded,color: yellow,),
                        SizedBox(width: 10,),
                        Text('Profile',style: TextStyle(color: white),)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.local_atm,color: yellow,),
                        SizedBox(width: 10,),
                        Text('Balance',style: TextStyle(color: white),)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.shopping_basket_rounded,color: yellow,),
                        SizedBox(width: 10,),
                        Text('Cart',style: TextStyle(color: white),)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.favorite_rounded,color: yellow,),
                        SizedBox(width: 10,),
                        Text('Favorites',style: TextStyle(color: white),)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.help,color: yellow,),
                        SizedBox(width: 10,),
                        Text('Help',style: TextStyle(color: white),)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.settings_rounded,color: yellow,),
                        SizedBox(width: 10,),
                        Text('Settings',style: TextStyle(color: white),)
                      ],
                    ),
                  ],
                ),
              ),
              Divider(color: white,),
              Row(
                children: [
                  Icon(Icons.logout,color: yellow,),
                  SizedBox(width: 10,),
                  Text('Logout',style: TextStyle(color: white),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
