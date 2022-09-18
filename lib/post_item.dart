import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem({Key? key,required this.body}) : super(key: key);
final String body;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
                child: Icon(Icons.person, color: Colors.white, size: 20),
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                children: [
                  Text(
                    'Owner',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        '3h',
                        style:
                        TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.public,
                        size: 15,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            body,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('100'),
              SizedBox(
                width: 5,
              ),
              Image.asset(
                'assets/images/reacts.jpg',
                height: 18,
              ),
              Spacer(),
              Text('100 comment'),
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.black,
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/like.jpg',
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Like',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/comment.jpg',
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Comment',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/share.jpg',
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Share',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.black,
            height: 25,
          ),
        ],
      ),
    );
  }
}
