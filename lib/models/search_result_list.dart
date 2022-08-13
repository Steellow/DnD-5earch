import "package:dnd_5earch/models/search_result.dart";

class SearchResultList {
  final int count;
  final List<SearchResult> results;

  SearchResultList(this.count, this.results);

  factory SearchResultList.fromJson(Map<String, dynamic> json) {
    List<SearchResult> resultsList =
        (json["results"] as List).map((i) => SearchResult.fromJson(i)).toList();

    return SearchResultList(json["count"], resultsList);
  }

  @override
  String toString() =>
      "SearchResultList(count: $count, results: ${results.map((e) => e.toString())})";
}
