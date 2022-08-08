import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchSomething extends StatelessWidget {
  const SearchSomething({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            FontAwesomeIcons.dAndD,
            size: 48,
          ),
          Text("Search something"),
        ],
      ),
    );
  }
}
