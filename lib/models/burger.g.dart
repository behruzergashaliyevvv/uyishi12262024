// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'burger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Burger _$BurgerFromJson(Map<String, dynamic> json) => Burger(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      averageRating: (json['averageRating'] as num).toDouble(),
      deliveryPrice: json['deliveryPrice'] as String,
      deliveryTime: json['deliveryTime'] as String,
      size: json['size'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$BurgerToJson(Burger instance) => <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'averageRating': instance.averageRating,
      'deliveryPrice': instance.deliveryPrice,
      'deliveryTime': instance.deliveryTime,
      'size': instance.size,
      'ingredients': instance.ingredients,
    };
