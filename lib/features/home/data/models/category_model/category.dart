import 'dart:convert';

import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final int id;
  final String image;
  final String name;
  final String? type;
  final DateTime createdAt;

  const Category(
      {required this.id,
      required this.image,
      required this.name,
      this.type,
      required this.createdAt});

  factory Category.fromMap(Map<String, dynamic> data) => Category(
        id: data['id'] as int,
        image: data['image'] as String,
        name: data['name'] as String,
        type: data['type'] as String?,
        createdAt: DateTime.parse(data['created_at'] as String),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'image': image,
        'name': name,
        'type': type,
        'created_at': createdAt.toIso8601String(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Category].
  factory Category.fromJson(String data) {
    return Category.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Category] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [id, image, name, type, createdAt];
}
