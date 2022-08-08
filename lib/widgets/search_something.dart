import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchSomething extends StatelessWidget {
  const SearchSomething({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                FontAwesomeIcons.dAndD,
                size: 48,
              ),
            ),
            Text("Search something"),
          ],
        ),
      ),
    );
  }
}
