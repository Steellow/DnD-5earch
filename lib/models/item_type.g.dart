// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemTypeAdapter extends TypeAdapter<ItemType> {
  @override
  final int typeId = 0;

  @override
  ItemType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ItemType.abilityScore;
      case 1:
        return ItemType.alignment;
      case 2:
        return ItemType.background;
      case 3:
        return ItemType.language;
      case 4:
        return ItemType.proficiency;
      case 5:
        return ItemType.skill;
      case 6:
        return ItemType.clazz;
      case 7:
        return ItemType.condition;
      case 8:
        return ItemType.damageType;
      case 9:
        return ItemType.magicSchool;
      case 10:
        return ItemType.equipment;
      case 11:
        return ItemType.equipmentCategory;
      case 12:
        return ItemType.magicItem;
      case 13:
        return ItemType.weaponProperty;
      case 14:
        return ItemType.feat;
      case 15:
        return ItemType.feature;
      case 16:
        return ItemType.monster;
      case 17:
        return ItemType.race;
      case 18:
        return ItemType.ruleSection;
      case 19:
        return ItemType.rule;
      case 20:
        return ItemType.spell;
      case 21:
        return ItemType.subclass;
      case 22:
        return ItemType.subrace;
      case 23:
        return ItemType.trait;
      case 24:
        return ItemType.unknown;
      default:
        return ItemType.unknown;
    }
  }

  @override
  void write(BinaryWriter writer, ItemType obj) {
    switch (obj) {
      case ItemType.abilityScore:
        writer.writeByte(0);
        break;
      case ItemType.alignment:
        writer.writeByte(1);
        break;
      case ItemType.background:
        writer.writeByte(2);
        break;
      case ItemType.language:
        writer.writeByte(3);
        break;
      case ItemType.proficiency:
        writer.writeByte(4);
        break;
      case ItemType.skill:
        writer.writeByte(5);
        break;
      case ItemType.clazz:
        writer.writeByte(6);
        break;
      case ItemType.condition:
        writer.writeByte(7);
        break;
      case ItemType.damageType:
        writer.writeByte(8);
        break;
      case ItemType.magicSchool:
        writer.writeByte(9);
        break;
      case ItemType.equipment:
        writer.writeByte(10);
        break;
      case ItemType.equipmentCategory:
        writer.writeByte(11);
        break;
      case ItemType.magicItem:
        writer.writeByte(12);
        break;
      case ItemType.weaponProperty:
        writer.writeByte(13);
        break;
      case ItemType.feat:
        writer.writeByte(14);
        break;
      case ItemType.feature:
        writer.writeByte(15);
        break;
      case ItemType.monster:
        writer.writeByte(16);
        break;
      case ItemType.race:
        writer.writeByte(17);
        break;
      case ItemType.ruleSection:
        writer.writeByte(18);
        break;
      case ItemType.rule:
        writer.writeByte(19);
        break;
      case ItemType.spell:
        writer.writeByte(20);
        break;
      case ItemType.subclass:
        writer.writeByte(21);
        break;
      case ItemType.subrace:
        writer.writeByte(22);
        break;
      case ItemType.trait:
        writer.writeByte(23);
        break;
      case ItemType.unknown:
        writer.writeByte(24);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
