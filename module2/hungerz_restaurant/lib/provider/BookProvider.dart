import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../model/BookModel.dart';
import '../services/http.service.dart';


class BookProvider extends ChangeNotifier{
  httpService booksservices=httpService();
  bool isLoading=false;
  BookModel? books;

  BookProvider(String id){
    getAllBooks(id);
  }
  Future<void> getAllBooks(String id)async {
    isLoading=true;
    notifyListeners();

    final response=await booksservices.sendApiRequest(url: "Books/$id", body: {}, method: "get", headers: null);
    if(response!=null){
      var model=BookModel.fromJson(jsonDecode(response.body));
      books=model;
    }


    print("List Response $books");
    isLoading=false;
    notifyListeners();
  }

}