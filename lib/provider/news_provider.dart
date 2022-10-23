import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NewsProvider extends ChangeNotifier {

  List data = [];

bool loading = false;
  getData() async {
    loading = true;
    notifyListeners();
    http.Response res = await http.get(
      Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=8617b2e7ed1f43aeaaff85019305bc38'),
    );
    if(res.statusCode ==200){
      data = json.decode(res.body)['articles'];
    }
    loading = false;
    notifyListeners();
  }
}
