import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/news_provider.dart';
import '../../shared/news_item.dart';



/*


https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=8617b2e7ed1f43aeaaff85019305bc38


 */



class Sports extends StatelessWidget {
  const Sports({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsProvider>(builder: (context, provider, _) {
      return provider.sportsData.isEmpty
          ? Center(
        child: CircularProgressIndicator(
          color: Colors.deepOrange,
        ),
      )
          : Padding(
        padding: EdgeInsets.all(8),
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return NewsItem(
              title: provider.sportsData[index]['title'],
              date: provider.sportsData[index]['publishedAt'],
              image: provider.sportsData[index]['urlToImage'].toString(),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              thickness: 1.5,
              indent: 15,
              endIndent: 15,
              height: 30,
            );
          },
          itemCount: provider.sportsData.length,
        ),
      );
    });
  }
}
