import 'package:flutter/cupertino.dart';
import 'package:hello24_ai/extensions/responsive_size.dart';
import 'package:hello24_ai/widgets/styled_text.dart';

class SelectionContainerFirstRow extends StatelessWidget {
  const SelectionContainerFirstRow(
      {super.key, required this.text, required this.icon, required this.color});
  final String text;
  final Color color;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width(180),
      height: context.width(25),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: context.width(20),
          right: context.width(10),
        ),
        child: Row(
          children: [
            icon,
            SizedBox(
              width: context.width(10),
            ),
            StyledText(text: text, size: 11),
          ],
        ),
      ),
    );
  }
}
