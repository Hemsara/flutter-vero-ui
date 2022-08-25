import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget filterItem(bool active, String text) {
      return Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: active ? const Color(0xff05AAAB) : null),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                text,
                style: TextStyle(
                    color: active ? Colors.white : Colors.grey, fontSize: 13),
              ),
            ),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
        width: double.infinity,
        height: 43,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 25, 26, 28),
          borderRadius: BorderRadius.circular(100),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              filterItem(true, "ALL"),
              filterItem(false, "PHOTOS"),
              filterItem(false, "VIDEOS"),
              filterItem(false, "LINKS"),
              filterItem(false, "MOVIES"),
              filterItem(false, "ALL"),
              filterItem(false, "ALL"),
              filterItem(false, "ALL"),
            ],
          ),
        ),
      ),
    );
  }
}
