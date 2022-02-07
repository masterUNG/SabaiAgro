// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:flutter/material.dart';

class ProductModel {
  final String details;
  final String name;
  final String pdf;
  final String pic;
  ProductModel({
    @required this.details,
    @required this.name,
    @required this.pdf,
    @required this.pic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': details,
      'name': name,
      'pdf': pdf,
      'pic': pic,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      details: (map['details'] ?? '') as String,
      name: (map['name'] ?? '') as String,
      pdf: (map['pdf'] ?? '') as String,
      pic: (map['pic'] ?? '') as String,
    );
  }

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
