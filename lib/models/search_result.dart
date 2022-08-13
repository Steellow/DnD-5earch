import "package:dnd_5earch/models/item_type.dart";

class SearchResult {
  final String index;
  final String name;
  final String url;
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
