import 'package:dnd_5earch/models/item_type.dart';

class SearchResult {
  final String index;
  final String name;
  final String url;
  ItemType type = ItemType.unknown;

  SearchResult(this.index, this.name, this.url) {
    type = getItemTypeFromUrl(url);
  }

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      SearchResult(json['index'], json['name'], json['url']);

  @override
  String toString() =>
      'SearchResult(index: $index, name: $name, url: $url, type: ${type.toString()})';
}
