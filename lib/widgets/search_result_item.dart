import 'package:dnd_5earch/models/item_type.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          leading: Icon(getIconFromType(type)),
          title: Text(title),
        ),
      ),
    );
  }
}

IconData getIconFromType(ItemType type) {
  switch (type) {
    case ItemType.equipment:
      return FontAwesomeIcons.hatWizard;
    case ItemType.monster:
      return FontAwesomeIcons.hippo;
    case ItemType.spell:
      return FontAwesomeIcons.bookSkull;
    default:
      return FontAwesomeIcons.question;
  }
}
