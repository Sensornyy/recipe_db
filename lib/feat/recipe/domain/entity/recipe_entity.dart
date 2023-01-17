import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class RecipeEntity extends Equatable {
  final DateTime id;
  final String title;
  final String description;
  final List<String> ingredients;
  final int minutes;
  final Icon icon;

  const RecipeEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.ingredients,
    required this.minutes,
    required this.icon,
  });

  @override
  List<Object> get props => [
        id,
        title,
        description,
        ingredients,
        minutes,
        icon,
      ];
}
