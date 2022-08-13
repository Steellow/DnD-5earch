// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SearchResultAdapter extends TypeAdapter<SearchResult> {
  @override
  final int typeId = 1;

  @override
  SearchResult read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SearchResult(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
      fields[3] as ItemType?,
    );
  }

  @override
  void write(BinaryWriter writer, SearchResult obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.index)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.url)
      ..writeByte(3)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchResultAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
