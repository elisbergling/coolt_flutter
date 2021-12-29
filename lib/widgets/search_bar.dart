import 'package:coolt_flutter/constants/colors.dart';
import 'package:coolt_flutter/providers/providers.dart';
import 'package:coolt_flutter/providers/state_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchBar extends HookWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pages = useProvider(pagesProvider);
    return Container(
      width: 300,
      margin: const EdgeInsets.all(10),
      child: Center(
        child: TextField(
          style: TextStyle(
            color: white,
            fontSize: 16,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(0),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: blue),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: white),
            ),
            hintText: 'Search',
            hintStyle: TextStyle(
              color: white.withOpacity(0.7),
              fontSize: 16,
            ),
            prefixIcon: Icon(
              Icons.search,
              color: white.withOpacity(0.7),
            ),
          ),
          onSubmitted: (value) {
            for (int i = 0; i < pages.length; i++) {
              if (pages[i] == value.toLowerCase()) {
                context.read(pageIndexProvider).state = i;
              }
            }
          },
        ),
      ),
    );
  }
}
