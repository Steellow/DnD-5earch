import "package:dnd_5earch/models/search_result.dart";
import "package:dnd_5earch/widgets/search_result_item.dart";
import "package:flutter/material.dart";

class SearchResults extends StatefulWidget {
  final List<SearchResult> allItems;
  final String searchTerm;

  const SearchResults(
      {Key? key, required this.allItems, required this.searchTerm})
      : super(key: key);

  @override
  State<SearchResults> createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  @override
  Widget build(BuildContext context) {
    List<SearchResult> items = widget.allItems
        .where((e) => e.index.contains(widget.searchTerm.trim()))
        .toList();

    return Expanded(
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (ctx, idx) {
            SearchResult item = items[idx];
            return SearchResultItem(
              title: item.name,
              type: item.type,
            );
          }),
    );
  }
}
