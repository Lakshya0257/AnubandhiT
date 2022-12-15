// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    const placeholder = Opacity(
      opacity: 0,
      child: IconButton(
        icon: Icon(Icons.no_cell),
        onPressed: null,
      ),
    );
    return BottomAppBar(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        buildTabItem(index: 0, icon: const Icon(Icons.home)),
        placeholder,
        buildTabItem(index: 1, icon: const Icon(Icons.person_off_outlined)),
      ]),
    );
  }

  Widget buildTabItem({required int index, required Icon icon}) {
    return IconButton(onPressed: () {}, icon: icon);
  }
}
