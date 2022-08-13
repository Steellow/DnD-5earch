import "package:dnd_5earch/models/item_type.dart";
import "package:hive/hive.dart";

part "search_result.g.dart";

@HiveType(typeId: 1)
class SearchResult {
  @HiveField(0)
  final String index;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String url;

  @HiveField(3)
  late ItemType type;

  SearchResult(this.index, this.name, this.url, ItemType? type) {
    this.type = type ?? getItemTypeFromUrl(url);
  }

  factory SearchResult.fromJson(Map<String, dynamic> json) {
    ItemType? type =
        json["type"] != null ? getItemTypeFromString(json["type"]) : null;
    return SearchResult(json["index"], json["name"], json["url"], type);
  }

  Map<String, dynamic> toJson() =>
      {"index": index, "name": name, "url": url, "type": type.toShortString()};

  @override
  String toString() =>
      "SearchResult(index: $index, name: $name, url: $url, type: ${type.toString()})";
}
