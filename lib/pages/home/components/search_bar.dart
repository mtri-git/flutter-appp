import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
	padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
	child: TextField(
		decoration: InputDecoration(
		hintText: "Search...",
		hintStyle: TextStyle(color: Colors.grey.shade600),
		prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
		filled: true,
		fillColor: Colors.white,
		contentPadding: const EdgeInsets.all(8),
		enabledBorder: OutlineInputBorder(
			borderRadius: const BorderRadius.all(Radius.circular(20)),
			borderSide:  BorderSide(
              color: Colors.grey.shade100,
          )
		),
	),
	),
	);
  }
}