import 'package:flutter/material.dart';

import 'item.dart';

class RefectItem extends StatelessWidget {
  const RefectItem({Key? key, required this.item}) : super(key: key);
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 268,
        margin: const EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 8),
        child: Column(children: [
          //Content
          _image(),
          const SizedBox(
            height: 8,
          ),
          _textContent(),

          //Footer
          const Spacer(),
          const Divider(
            color: Colors.black12,
          )
        ]));
  }

  Widget _image() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: SizedBox(
          height: 180,
          child: Image.network(
            item.image,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ));
  }

  Widget _textContent() {
    return Column(
      children: [
        Text(item.title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.black)),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(item.date,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: Colors.black26)),
            Text(
              item.state,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  color: Colors.green),
            )
          ],
        )
      ],
    );
  }
}
