import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'item.dart';
import 'item_dummy.dart';
import 'refect_header.dart';
import 'refect_item.dart';

class ReflectScenePage extends StatelessWidget {
  ReflectScenePage({Key? key}) : super(key: key);

  final List<Item> _items = ItemDummy.items();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: RefreshIndicator(
            onRefresh: () async {
              print("https://duongth.dev onRefresh");
            },
            child: _body()));
  }

  Widget _body() {
    return ListView.builder(
        physics: const ClampingScrollPhysics(),
        itemCount: _items.length + 1,
        itemBuilder: ((context, index) {
          if (index == 0) {
            return const RefectHeader();
          } else {
            return RefectItem(
              item: _items[index - 1],
            );
          }
        }));
  }
}
