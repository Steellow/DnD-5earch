import "package:dnd_5earch/misc/constants.dart";
import "package:dnd_5earch/misc/http_client.dart";
import "package:dnd_5earch/models/search_result.dart";
import "package:hive/hive.dart";

class Storage {
  static Future<List<SearchResult>> getAllItems() async {
    print("Storage.getAllItems called");

    var box = Hive.box(HIVE_BOX);
    var items = box.get(KEY_ALL_ITEMS);

    // If items aren't yet saved to hive, save them
    if (items == null) {
      List<SearchResult> items = await HttpClient.getAllSearchResults();
      saveAllItems(items);
      return items;
    }

    return items.cast<SearchResult>();
  }

  static void saveAllItems(List<SearchResult> items) {
    print("Storage.saveAllItems called");
    var box = Hive.box(HIVE_BOX);
    box.put(KEY_ALL_ITEMS, items);
  }
}
