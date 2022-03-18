import 'package:bl_alkilu/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Rating extends StatelessWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: RatingBar.builder(
        updateOnDrag: true,
        allowHalfRating: true,
        itemBuilder: (BuildContext context, int index) =>
        const Icon(
          Icons.star,
          color: appPurpleColor,
          size: 20,
        ),
        onRatingUpdate: (double value) =>print(value),
        itemCount: 5,
        itemSize: 20,
        direction: Axis.horizontal,
      ),
    );
  }
}
