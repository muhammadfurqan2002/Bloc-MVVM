import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bloc_practice/model/posts.dart';
import 'package:http/http.dart' as http;
class PostRepository{
  Future<List<Posts>?> fetchPosts()async{
    try{
      final res=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
      if(res.statusCode==200){
        final data=json.decode(res.body) as List;

        return data.map((e){
          return Posts(
            id: e['id'],
            userId: e['userId'],
            title: e['title'],
            body: e['body']
          );
        }).toList();

      }
    }on SocketException{
      throw Exception("error while fetching data");
    }on TimeoutException{
      throw Exception("time out error while fetching");
    }
    throw Exception("error while fetching");

  }
}