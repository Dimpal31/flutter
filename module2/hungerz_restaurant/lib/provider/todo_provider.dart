

import 'package:flutter/material.dart';

import '../model/BookListModel.dart';
import '../model/todo.dart';
import '../services/http.service.dart';

class httpProvider extends ChangeNotifier{
  httpService _services=httpService();
  bool isLoading=false;
  List<BookListModel> todos=[];

  httpProvider(){
    getAllTodos();
  }

  Future<void> getAllTodos()async {
    isLoading=true;
    notifyListeners();

    final response=await _services.sendApiRequest(url: "Books", body: {}, method: "get", headers: null);
    if(response!=null){
      var model=bookListModelFromJson(response.body);
      todos.addAll(model);
    }

    print("List Response $todos");
    isLoading=false;
    notifyListeners();
  }
}