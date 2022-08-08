import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  final TextEditingController controller;
  final Function textChangeCallback;

  const SearchBox(
      {Key? key, required this.controller, required this.textChangeCallback})
      : super(key: key);

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: widget.controller,
        onChanged: (text) => widget.textChangeCallback(),
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Type here',
        ),
      ),
    );
  }
}
