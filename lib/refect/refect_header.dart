import 'package:flutter/material.dart';

class RefectHeader extends StatelessWidget {
  const RefectHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Column(
        children: [_appBarHeader(), _eventHeader(), _filterHeader()],
      ),
    );
  }

  Widget _appBarHeader() {
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                print("https://duongth.dev touchup inside Backbutton");
              },
              icon: const Icon(Icons.arrow_back)),
          const SizedBox(width: 8),
          const Text("Phản ánh hiện trường",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black,
              ))
        ],
      ),
    );
  }

  Widget _eventHeader() {
    return SizedBox(
      height: 40,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
              style: _borderGray,
              onPressed: () {
                print("https://duongth.dev touchup inside Tìm kiếm button");
              },
              child: const Text(
                "Tìm kiếm",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                    color: Colors.black),
              )),
          const SizedBox(width: 8),
          TextButton(
              onPressed: () {
                print("https://duongth.dev touchup inside Chuyên mục button");
              },
              style: _borderGray,
              child: const Text("Chuyên mục",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                      color: Colors.black)))
        ],
      ),
    );
  }

  Widget _filterHeader() {
    return SizedBox(
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
              style: _borderGray,
              onPressed: () {
                print("https://duongth.dev touchup inside Tiêu biểu button");
              },
              child: const Text("Tiêu biểu",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                      color: Colors.black38))),
          const SizedBox(width: 8),
          TextButton(
              style: _borderGray,
              onPressed: () {
                print("https://duongth.dev touchup inside Đã xử lý button");
              },
              child: const Text("Đã xử lý",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13))),
          const SizedBox(width: 8),
          TextButton(
              style: _borderGray,
              onPressed: () {
                print(
                    "https://duongth.dev touchup inside Đang xử lý lý button");
              },
              child: const Text("Đang xử lý",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                      color: Colors.black38)))
        ],
      ),
    );
  }

  ButtonStyle get _borderGray => ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: const BorderSide(color: Colors.black26))));
}
