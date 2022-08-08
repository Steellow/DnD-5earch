import 'package:dnd_5earch/misc/item_type_enum.dart';
import 'package:dnd_5earch/widgets/search_result_item.dart';
import 'package:flutter/material.dart';

class SearchResults extends StatefulWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  State<SearchResults> createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          SearchResultItem(title: "Dagger", type: ItemType.equipment),
          SearchResultItem(title: "Acid Arrow", type: ItemType.spell),
          SearchResultItem(title: "Adult Black Dragon", type: ItemType.monster),
        ],
      ),
    );
  }
}
