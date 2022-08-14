import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:hive/hive.dart";
import 'package:dnd_5earch/misc/string_extension.dart';

part "item_type.g.dart";

@HiveType(typeId: 0)
enum ItemType {
  @HiveField(0)
  abilityScore,

  @HiveField(1)
  alignment,

  @HiveField(2)
  background,

  @HiveField(3)
  language,

  @HiveField(4)
  proficiency,

  @HiveField(5)
  skill,

  @HiveField(6)
  clazz,

  @HiveField(7)
  condition,

  @HiveField(8)
  damageType,

  @HiveField(9)
  magicSchool,

  @HiveField(10)
  equipment,

  @HiveField(11)
  equipmentCategory,

  @HiveField(12)
  magicItem,

  @HiveField(13)
  weaponProperty,

  @HiveField(14)
  feat,

  @HiveField(15)
  feature,

  @HiveField(16)
  monster,

  @HiveField(17)
  race,

  @HiveField(18)
  ruleSection,

  @HiveField(19)
  rule,

  @HiveField(20)
  spell,

  @HiveField(21)
  subclass,

  @HiveField(22)
  subrace,

  @HiveField(23)
  trait,

  @HiveField(24, defaultValue: true)
  unknown
}

extension ParseToString on ItemType {
  String toShortString() => toString().split(".").last;
  String toUIString() {
    String str = toShortString()..replaceAll("z", "s");
    str = str.camelCaseToSpaces(); // Must be before capitalization
    str = str.capitalize();
    return str;
  }
}

IconData getItemTypeIcon(ItemType type) {
  switch (type) {
    case ItemType.abilityScore:
      return FontAwesomeIcons.diceD20;
    case ItemType.alignment:
      return FontAwesomeIcons.dna;
    case ItemType.background:
      return FontAwesomeIcons.clockRotateLeft;
    case ItemType.language:
      return FontAwesomeIcons.language;
    case ItemType.proficiency:
      return FontAwesomeIcons.trophy;
    case ItemType.skill:
      return FontAwesomeIcons.brain;
    case ItemType.clazz:
      return FontAwesomeIcons.award;
    case ItemType.condition:
      return FontAwesomeIcons.biohazard;
    case ItemType.damageType:
      return FontAwesomeIcons.fire;
    case ItemType.magicSchool:
      return FontAwesomeIcons.hatWizard;
    case ItemType.equipment:
      return FontAwesomeIcons.coins;
    case ItemType.equipmentCategory:
      return FontAwesomeIcons.shirt;
    case ItemType.magicItem:
      return FontAwesomeIcons.wandMagic;
    case ItemType.weaponProperty:
      return FontAwesomeIcons.featherPointed;
    case ItemType.feat:
      return FontAwesomeIcons.handSparkles;
    case ItemType.feature:
      return FontAwesomeIcons.circleInfo;
    case ItemType.monster:
      return FontAwesomeIcons.dragon;
    case ItemType.race:
      return FontAwesomeIcons.paw;
    case ItemType.ruleSection:
      return FontAwesomeIcons.section;
    case ItemType.rule:
      return FontAwesomeIcons.gavel;
    case ItemType.spell:
      return FontAwesomeIcons.bookSkull;
    case ItemType.subclass:
      return FontAwesomeIcons.plus;
    case ItemType.subrace:
      return FontAwesomeIcons.s;
    case ItemType.trait:
      return FontAwesomeIcons.clover;
    case ItemType.unknown:
    default:
      return FontAwesomeIcons.question;
  }
}

ItemType getItemTypeFromUrl(String url) {
  String strippedUrl = url.split("/")[2];

  switch (strippedUrl) {
    case "ability-scores":
      return ItemType.abilityScore;
    case "alignments":
      return ItemType.alignment;
    case "backgrounds":
      return ItemType.background;
    case "languages":
      return ItemType.language;
    case "proficiencies":
      return ItemType.proficiency;
    case "skills":
      return ItemType.skill;
    case "classes":
      return ItemType.clazz;
    case "conditions":
      return ItemType.condition;
    case "damage-types":
      return ItemType.damageType;
    case "magic-schools":
      return ItemType.magicSchool;
    case "equipment":
      return ItemType.equipment;
    case "equipment-categories":
      return ItemType.equipmentCategory;
    case "magic-items":
      return ItemType.magicItem;
    case "weapon-properties":
      return ItemType.weaponProperty;
    case "feats":
      return ItemType.feat;
    case "features":
      return ItemType.feature;
    case "monsters":
      return ItemType.monster;
    case "races":
      return ItemType.race;
    case "rule-sections":
      return ItemType.ruleSection;
    case "rules":
      return ItemType.rule;
    case "spells":
      return ItemType.spell;
    case "subclasses":
      return ItemType.subclass;
    case "subraces":
      return ItemType.subrace;
    case "traits":
      return ItemType.trait;
    default:
      return ItemType.unknown;
  }
}

ItemType getItemTypeFromString(String typeAsString) {
  try {
    return ItemType.values.byName(typeAsString);
  } catch (e) {
    print("typeAsString: $typeAsString");
    throw Exception("Coudln't parse type string $typeAsString. Error: $e");
  }
}
