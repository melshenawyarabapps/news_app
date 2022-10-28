import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  NewsItem({
    Key? key,
    required this.title,
    required this.date,
    required this.image,
  }) : super(key: key);
  String image;
  String title;

  String date;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            clipBehavior: Clip.antiAlias,
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/images/place_holder.jpg',
              fit: BoxFit.cover,
              image:image,
              imageErrorBuilder: (c, v, b) {
                return Image.asset('assets/images/place_holder.jpg');
              },
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w900),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  date,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
