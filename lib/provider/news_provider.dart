import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NewsProvider extends ChangeNotifier {
  List businessData = [];
  List sportsData = [];
  List scienceData = [];

  List searchData = [];

  getData({required String cat}) async {
    try {
      http.Response response = await http.get(
        Uri.parse(
            "https://newsapi.org/v2/top-headlines?country=us&category=$cat&apiKey=8617b2e7ed1f43aeaaff85019305bc38"),
      );
      if (response.statusCode == 200) {
        if (cat == 'business') {
          businessData = json.decode(response.body)['articles'];
        } else if (cat == 'sports') {
          sportsData = json.decode(response.body)['articles'];
        } else if (cat == 'science') {
          scienceData = json.decode(response.body)['articles'];
        }
        notifyListeners();
      } else {
        print('${json.decode(response.body)['message']}');
      }
    } on SocketException {
      print('Network error');
      notifyListeners();
    } catch (e) {
      print(e.toString());
      notifyListeners();
    }
  }

  search({required String query}) async {
    try {
      http.Response response = await http.get(
        Uri.parse(
            "https://newsapi.org/v2/everything?q=$query&apiKey=8617b2e7ed1f43aeaaff85019305bc38"),
      );
      if (response.statusCode == 200) {
          searchData = json.decode(response.body)['articles'];
        notifyListeners();
      } else {
        print('${json.decode(response.body)['message']}');
      }
    } on SocketException {
      print('Network error');
      notifyListeners();
    } catch (e) {
      print(e.toString());
      notifyListeners();
    }
  }

  //everything
}
