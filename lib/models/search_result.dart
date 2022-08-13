import "package:dnd_5earch/models/item_type.dart";

class SearchResult {
  final String index;
  final String name;
  final String url;
  ItemType type = ItemType.unknown;

  SearchResult(this.index, this.name, this.url, ItemType? type) {
    this.type = type ?? getItemTypeFromUrl(url);
  }

  factory SearchResult.fromJson(Map<String, dynamic> json) {
    ItemType? type =
        json["type"] != null ? getItemTypeFromString(json["type"]) : null;
    return SearchResult(json["index"], json["name"], json["url"], type);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {"index": index, "name": name, "url": url};
    if (type != ItemType.unknown) {
      map["type"] = type.toShortString();
    }
    return map;
  }

  @override
  String toString() =>
      "SearchResult(index: $index, name: $name, url: $url, type: ${type.toString()})";
}
