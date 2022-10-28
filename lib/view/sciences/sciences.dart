import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/news_provider.dart';
import '../../shared/news_item.dart';


class Sciences extends StatelessWidget {
  const Sciences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsProvider>(builder: (context, provider, _) {
      return provider.scienceData.isEmpty
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
              title: provider.scienceData[index]['title'],
              date: provider.scienceData[index]['publishedAt'],
              image: provider.scienceData[index]['urlToImage'].toString(),
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
          itemCount: provider.scienceData.length,
        ),
      );
    });
  }
}
