import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Reviews extends StatelessWidget {
  final String img;
  final String name;
  final String review;
  final double rating;

  const Reviews(
      {Key key,
      @required this.img,
      @required this.name,
      this.review = "",
      @required this.rating})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Image.asset("assets/images/" + img + ".jpg"),
      ),
      title: Row(
        children: [
          Expanded(
            child: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          RatingBar(
              itemSize: 20,
              ignoreGestures: true,
              initialRating: rating,
              maxRating: 5,
              allowHalfRating: true,
              ratingWidget: RatingWidget(
                half: Icon(Icons.star_half, color: Colors.amber),
                full: Icon(Icons.star, color: Colors.amber),
                empty:
                    Icon(Icons.star, color: Color.fromRGBO(224, 224, 225, 1)),
              ),
              onRatingUpdate: (rating) {}),
        ],
      ),
      subtitle: Text(review),
      minVerticalPadding: 10,
    );
  }
}
