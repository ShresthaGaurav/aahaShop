import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();

}
class _SearchState extends State<Search> {
  String name="";
  var _suggestion = new TextEditingController();

  // @override
  // void initState() {
  //   name=Autocom
  //
  // }

  GlobalKey<AutoCompleteTextFieldState<String>> key = new GlobalKey();
  List country = [
    "Afghan",
    "Albani",
    "Algeri",
    "Andorr",
    "Angola",
    "Antigu",
    "Argent",
    "Armeni",
    "Austra",
    "Austri",
    "Austri",
    "Azerba",
    "Baden*",
    "Bahama",
  ];

  @override
  Widget build(BuildContext context) {
    return AutoCompleteTextField(
      key: key,
      suggestions: country,
      controller: _suggestion,

      itemFilter: (item, query) {
        return item.toLowerCase().startsWith(query.toLowerCase());
      },
      // itemSorter: (a, b) {
      //   return a.compareto(b);
      // },
      // itemSubmitted: (item) {
      //   _suggestion.text = item;
      // },
      itemBuilder: (context, item) {
        name=item;
        return Text(item);

      },
    );
  }
}
