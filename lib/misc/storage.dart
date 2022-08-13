import "dart:convert";

import "package:dnd_5earch/misc/constants.dart";
import "package:dnd_5earch/misc/http_client.dart";
import "package:dnd_5earch/models/search_result.dart";
import "package:shared_preferences/shared_preferences.dart";

class Storage {
  static Future<List<SearchResult>> getAllItems() async {
    print("Storage.getAllItems called");

    SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String>? json = prefs.getStringList(KEY_ALL_ITEMS);

    // If items aren't yet saved to prefs, save them
    if (json == null) {
      List<SearchResult> items = await HttpClient.getAllSearchResults();
      saveAllItems(items);
      return items;
    }

    // Otherwise decode json list
    print("Items found from storage, decoding json");
    List<SearchResult> items =
        json.map((e) => SearchResult.fromJson(jsonDecode(e))).toList();
    return items;
  }

  static void saveAllItems(List<SearchResult> items) async {
    print("Storage.saveAllItems called");

    SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String> json = items.map((e) => jsonEncode(e.toJson())).toList();
    prefs.setStringList(KEY_ALL_ITEMS, json);
  }
}
