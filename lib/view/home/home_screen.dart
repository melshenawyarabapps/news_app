import 'package:code_projects/provider/news_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/bottom_nav_provider.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  initState() {
    super.initState();
    Future.delayed(Duration.zero,()async{
      Provider.of<NewsProvider>(context, listen: false).getData(cat: 'business');
      Provider.of<NewsProvider>(context, listen: false).getData(cat: 'sports');
      Provider.of<NewsProvider>(context, listen: false).getData(cat: 'science');
    });


  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavProvider>(builder: (context, provider, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'News App',
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: Colors.black,
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (ctx) => SearchScreen(),
                //   ),
                // );
                // Provider.of<NewsProvider>(context, listen: false).getData();
              },
            ),
            IconButton(
              icon: Icon(
                Icons.lightbulb_outline,
                size: 30,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: provider.screens[provider.index],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.deepOrange,
          currentIndex: provider.index,
          onTap: (newIndex) {
            provider.changeIndex(index: newIndex);
          },
          items: provider.items,
        ),
      );
    });
  }
}
