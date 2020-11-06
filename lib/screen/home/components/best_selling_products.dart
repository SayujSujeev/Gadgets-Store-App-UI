import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gadgets_store_app/constants/constants.dart';
import 'package:gadgets_store_app/data/data.dart';
import 'package:gadgets_store_app/models/best_selling_product_model.dart';
import 'package:gadgets_store_app/screen/details/details_screen.dart';
import 'package:gadgets_store_app/widgest/star_rating.dart';

class BestSellingProducts extends StatelessWidget {
  Widget _buildBestSellingProducts(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    BestSellingProductModel bestSellingProductModel =
        bestSellingProductsList[index];

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: appPadding / 2,
        horizontal: appPadding / 3,
      ),
      child: Container(
        width: size.width * 0.8,
        padding: EdgeInsets.all(appPadding / 3),
        decoration: BoxDecoration(
          color: brown,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                width: size.width * 0.24,
                fit: BoxFit.cover,
                image: AssetImage(bestSellingProductModel.imageUrl),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              width: size.width * 0.24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    bestSellingProductModel.name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    bestSellingProductModel.description,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: white,
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '\$',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '${bestSellingProductModel.price}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: white,
                          fontSize: 36,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: size.width * 0.24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StarRating(bestSellingProductModel.rating),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailsScreen(
                              bestSellingProductModel: bestSellingProductModel),
                        ),
                      );
                    },
                    child: Container(
                      width: size.width * 0.12,
                      height: size.height * 0.06,
                      decoration: BoxDecoration(
                        color: red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.arrow_forward_rounded,
                        color: white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.2,
      width: size.width,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: bestSellingProductsList.length,
        itemBuilder: (context, index) {
          return _buildBestSellingProducts(context, index);
        },
      ),
    );
  }
}
