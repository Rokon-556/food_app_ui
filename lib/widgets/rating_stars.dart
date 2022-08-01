import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  final int rating;
   const RatingStars(this.rating, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String star='';
    for(int i=0;i<rating;i++){
      star+='⭐ ';
    }
    star.trim();
    return Text(star,style: const TextStyle(fontSize: 18.0),);
  }
}
