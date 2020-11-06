import 'package:flutter/material.dart';
import 'package:gadgets_store_app/constants/constants.dart';
import 'package:gadgets_store_app/models/best_selling_product_model.dart';

class ProductNameAndImages extends StatefulWidget {
  final BestSellingProductModel bestSellingProductModel;

  ProductNameAndImages(this.bestSellingProductModel);

  @override
  _ProductNameAndImagesState createState() => _ProductNameAndImagesState();
}

class _ProductNameAndImagesState extends State<ProductNameAndImages> {
  Widget _buildImages(
      BuildContext context, int index, List<String> listImagesUrl) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(
        top: appPadding / 2,
        bottom: appPadding / 2,
        left: appPadding / 1.5,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image(
          width: size.width * 0.45,
          fit: BoxFit.cover,
          image: AssetImage(listImagesUrl[index]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: appPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.bestSellingProductModel.name,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.favorite_rounded,
                  color: red,
                )
              ],
            ),
          ),
          Container(
            height: size.height * 0.4,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: widget.bestSellingProductModel.listImagesUrl.length,
              itemBuilder: (context, index) {
                return _buildImages(context, index,
                    widget.bestSellingProductModel.listImagesUrl);
              },
            ),
          )
        ],
      ),
    );
  }
}
