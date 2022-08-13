enum ItemType {
  abilityScore,
  alignment,
  background,
  language,
  proficiency,
  skill,
  clazz,
  condition,
  damageType,
  magicSchool,
  equipment,
  equipmentCategory,
  magicItem,
  weaponProperty,
  feat,
  feature,
  monster,
  race,
  ruleSection,
  rule,
  spell,
  subclass,
  subrace,
  trait,
  unknown
}

extension ParseToString on ItemType {
  String toShortString() => toString().split(".").last;
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
