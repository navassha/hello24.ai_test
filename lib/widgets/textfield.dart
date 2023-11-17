import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello24_ai/extensions/responsive_size.dart';

class ModifieldTextField extends StatelessWidget {
  const ModifieldTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.table_badge_more_fill,
              color: Colors.white,
            ),
          ),
          enabledBorder:
              const UnderlineInputBorder(borderSide: BorderSide.none),
          focusedBorder:
              const UnderlineInputBorder(borderSide: BorderSide.none),
          contentPadding: EdgeInsets.all(context.width(10)),
          hintText: "Search mail",
          hintStyle: TextStyle(
            fontSize: context.width(13),
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontFamily: "Albertsans",
          ),
          prefixIcon: Icon(
            CupertinoIcons.search,
            color: Colors.white,
            size: context.width(15),
          ),
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
