import 'package:flutter/material.dart';
import 'package:gadgets_store_app/constants/constants.dart';

class StarRating extends StatefulWidget {

  final double rating;

  StarRating(this.rating);

  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {

  Widget star(bool fill){
    return Container(
      child: Icon(
        Icons.star,
        size: 18,
        color: fill ? yellow : white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        if(index< (widget.rating).round()){
          return star(true);
        }else
          return star(false);
      }),
    );
  }
}
