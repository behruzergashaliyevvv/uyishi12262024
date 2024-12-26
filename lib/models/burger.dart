import 'package:json_annotation/json_annotation.dart';

part 'burger.g.dart'; // This will be the generated file for fromJson and toJson

@JsonSerializable()
class Burger {
  final String name;
  final double price;
  final String description;
  final double averageRating;
  final String deliveryPrice;
  final String deliveryTime;
  final String size;
  final List<String> ingredients;

  Burger({
    required this.name,
    required this.price,
    required this.description,
    required this.averageRating,
    required this.deliveryPrice,
    required this.deliveryTime,
    required this.size,
    required this.ingredients,
  });

  // Factory methods to convert JSON to Burger object and vice versa
  factory Burger.fromJson(Map<String, dynamic> json) => _$BurgerFromJson(json);
  Map<String, dynamic> toJson() => _$BurgerToJson(this);
}
