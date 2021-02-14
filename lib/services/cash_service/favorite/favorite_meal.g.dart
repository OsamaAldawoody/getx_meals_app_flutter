// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_meal.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoriteMealAdapter extends TypeAdapter<FavoriteMeal> {
  @override
  final int typeId = 1;

  @override
  FavoriteMeal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoriteMeal(
      imageUrl: fields[2] as String,
    )
      ..id = fields[0] as String
      ..categories = (fields[1] as List)?.cast<String>()
      ..ingredients = (fields[3] as List)?.cast<String>()
      ..steps = (fields[4] as List)?.cast<String>()
      ..duration = fields[5] as int
      ..isGlutenFree = fields[6] as bool
      ..isLactoseFree = fields[7] as bool
      ..isVegan = fields[8] as bool
      ..isVegetarian = fields[9] as bool;
  }

  @override
  void write(BinaryWriter writer, FavoriteMeal obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.categories)
      ..writeByte(2)
      ..write(obj.imageUrl)
      ..writeByte(3)
      ..write(obj.ingredients)
      ..writeByte(4)
      ..write(obj.steps)
      ..writeByte(5)
      ..write(obj.duration)
      ..writeByte(6)
      ..write(obj.isGlutenFree)
      ..writeByte(7)
      ..write(obj.isLactoseFree)
      ..writeByte(8)
      ..write(obj.isVegan)
      ..writeByte(9)
      ..write(obj.isVegetarian);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteMealAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
