import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:gadgets_store_app/constants/constants.dart';
import 'package:gadgets_store_app/models/best_selling_product_model.dart';
import 'package:gadgets_store_app/widgest/star_rating.dart';

class ProductFeatures extends StatefulWidget {
  final BestSellingProductModel bestSellingProductModel;

  ProductFeatures(this.bestSellingProductModel);

  @override
  _ProductFeaturesState createState() => _ProductFeaturesState();
}

class _ProductFeaturesState extends State<ProductFeatures> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: appPadding / 2),
        child: Container(
          decoration: BoxDecoration(
            color: brown,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(40),
            ),
          ),
          padding: EdgeInsets.all(appPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Features',
                    style: TextStyle(
                      color: white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      StarRating(widget.bestSellingProductModel.rating),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        widget.bestSellingProductModel.rating.toString(),
                        style: TextStyle(color: white, fontSize: 17),
                      )
                    ],
                  )
                ],
              ),
              Text(
                widget.bestSellingProductModel.maxDescription,
                style: TextStyle(
                  color: white,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.12,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.battery_charging_full_rounded,
                          color: yellow,
                          size: 30,
                        ),
                        Text(
                          '${widget.bestSellingProductModel.battery}h',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.12,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.whatshot_rounded,
                          color: yellow,
                          size: 30,
                        ),
                        Text(
                          '${widget.bestSellingProductModel.input}m',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.12,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.bluetooth_rounded,
                          color: yellow,
                          size: 30,
                        ),
                        Text(
                          '${widget.bestSellingProductModel.bluetooth}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.12,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.volume_up_rounded,
                          color: yellow,
                          size: 30,
                        ),
                        Text(
                          '${widget.bestSellingProductModel.sound}d',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: appPadding / 2),
                      height: size.height * 0.1,
                      decoration: BoxDecoration(
                        color: red,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('\$',style: TextStyle(
                            color: white,
                            fontSize: 16
                          ),),
                          Text('${widget.bestSellingProductModel.price}',style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w600,
                              fontSize: 26
                          ),),
                          SizedBox(width: 10,),
                          Text('+ Add To Cart',style: TextStyle(
                              color: yellow,
                              fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.1,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.shopping_basket_rounded,
                      size: 40,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
