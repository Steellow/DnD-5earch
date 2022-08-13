import "package:dnd_5earch/models/search_result.dart";
import "package:dnd_5earch/widgets/search_result_item.dart";
import "package:flutter/material.dart";

class SearchResults extends StatefulWidget {
  final List<SearchResult> items;

  const SearchResults({Key? key, required this.items}) : super(key: key);

  @override
  State<SearchResults> createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: widget.items.length,
          itemBuilder: (ctx, idx) {
            SearchResult item = widget.items[idx];
            return SearchResultItem(
              title: item.name,
              type: item.type,
            );
          }),
    );
  }
}
