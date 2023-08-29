// To parse this JSON data, do
//
//     final bookModel = bookModelFromJson(jsonString);

import 'dart:convert';

List<BookModel>bookModelFromJson(String str) => List<BookModel>.from(json.decode(str).map((x) => BookModel.fromJson(x)));
//List<BookListModel> bookListModelFromJson(String str) => List<BookListModel>.from(json.decode(str).map((x) => BookListModel.fromJson(x)));


String bookModelToJson(List<BookModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//String bookListModelToJson(List<BookListModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BookModel {
  int id;
  String title;
  String description;
  int pageCount;
  String excerpt;
  DateTime publishDate;

  BookModel({
    required this.id,
    required this.title,
    required this.description,
    required this.pageCount,
    required this.excerpt,
    required this.publishDate,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    pageCount: json["pageCount"],
    excerpt: json["excerpt"],
    publishDate: DateTime.parse(json["publishDate"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "pageCount": pageCount,
    "excerpt": excerpt,
    "publishDate": publishDate.toIso8601String(),
  };
}
