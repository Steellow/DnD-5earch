import "dart:convert";

import "package:dnd_5earch/models/search_result.dart";
import "package:dnd_5earch/models/search_result_list.dart";
import "package:http/http.dart" as http;

class HttpClient {
  static const String baseUrl = "https://www.dnd5eapi.co/api/";

  static Future<List<SearchResult>> getAllSearchResults() async {
    List<SearchResult> allSearchResults = [];

    for (var endpoint in searchEndpoints) {
      //
      try {
        await http.get(Uri.parse(baseUrl + endpoint)).then((res) {
          //
          if (res.statusCode == 200) {
            SearchResultList list =
                SearchResultList.fromJson(jsonDecode(res.body));
            allSearchResults = [...allSearchResults, ...list.results];
            //
          } else {
            throw Exception("Failed to fetch $endpoint");
          }
        });
      } catch (e, trace) {
        // TODO: Proper error logging
        print(e);
        print(trace);
      }
    }

    // print("Full list: $allSearchResults");
    return allSearchResults;
  }

  static const List<String> searchEndpoints = [
    "ability-scores",
    "alignments",
    "backgrounds",
    // "languages",
    // "proficiencies",
    // "skills",
    // "classes",
    // "conditions",
    // "damage-types",
    // "magic-schools",
    // "equipment",
    // "equipment-categories",
    // "magic-items",
    // "weapon-properties",
    // "feats",
    // "features",
    // "monsters",
    // "races",
    // "rule-sections",
    // "rules",
    // "spells",
    // "subclasses",
    // "subraces",
    // "traits",
  ];
}
