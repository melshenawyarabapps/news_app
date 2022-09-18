import 'package:flutter/material.dart';
class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) => Container(
          height: 100,
          width: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                'assets/images/nat.jpg',
                fit: BoxFit.fill,
                height: 100,
                width: 65,
              ),
              Positioned(
                top: 5,
                left: 5,
                child: CircleAvatar(
                  radius: 10,
                  child: Icon(
                    Icons.person,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                'owner',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        separatorBuilder: (ctx, index) => SizedBox(
          width: 10,
        ),
        itemCount: 20,
      ),
    );
  }
}
