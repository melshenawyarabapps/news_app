import 'package:code_projects/provider/news_provider.dart';
import 'package:code_projects/shared/news_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Business extends StatelessWidget {
  const Business({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsProvider>(builder: (context, provider, _) {
      return provider.businessData.isEmpty
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
                    title: provider.businessData[index]['title'],
                    date: provider.businessData[index]['publishedAt'],
                    image: provider.businessData[index]['urlToImage'].toString(),
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
                itemCount: provider.businessData.length,
              ),
            );
    });
  }
}
