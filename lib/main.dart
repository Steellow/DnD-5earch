import "package:dnd_5earch/misc/storage.dart";
import "package:dnd_5earch/models/search_result.dart";
import "package:dnd_5earch/widgets/loading_screen.dart";
import "package:dnd_5earch/widgets/search_box.dart";
import "package:dnd_5earch/widgets/search_results.dart";
import "package:dnd_5earch/widgets/search_something.dart";
import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List<SearchResult>> _items;

  @override
  void initState() {
    _items = Storage.getAllItems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dnd 5earch",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: FutureBuilder<List<SearchResult>>(
        future: _items,
        builder: (context, snapshot) {
          // TODO: Handle errors
          if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData) {
            return HomePage(items: snapshot.data!);
          } else {
            return const LoadingScreen();
          }
        },
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  final List<SearchResult> items;

  const HomePage({Key? key, required this.items}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    print("HomePage.initState called");
  }

  textChangeCallback() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            textController.text.isNotEmpty
                ? SearchResults(items: widget.items)
                : const SearchSomething(),
            SearchBox(
              controller: textController,
              textChangeCallback: textChangeCallback,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
}
