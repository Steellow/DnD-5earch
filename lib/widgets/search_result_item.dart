import "package:dnd_5earch/models/item_type.dart";
import "package:flutter/material.dart";

class SearchResultItem extends StatelessWidget {
  final String title;
  final ItemType type;

  const SearchResultItem({Key? key, required this.title, required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      child: Card(
        child: ListTile(
          leading: SizedBox(
            height: double.infinity, // Centers the icon
            child: Icon(
              getItemTypeIcon(type),
            ),
          ),
          title: Text(title),
          subtitle: Text(type.toUIString()),
        ),
      ),
    );
  }
}
