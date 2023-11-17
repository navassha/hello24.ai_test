import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hello24_ai/extensions/responsive_size.dart';
import 'package:hello24_ai/widgets/styled_text.dart';

class DropDownButton extends ConsumerWidget {
  const DropDownButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownButton(
      padding: EdgeInsets.symmetric(horizontal: context.width(10)),
      value: ref.watch(valueProvider),
      underline: const SizedBox(),
      focusColor: Colors.transparent,
      autofocus: false,
      isDense: false,
      style: const TextStyle(color: Colors.black),
      borderRadius: BorderRadius.circular(
        context.width(10),
      ),
      iconDisabledColor: Colors.transparent,
      iconEnabledColor: Colors.transparent,
      items: const [
        DropdownMenuItem(
          value: "English(US)",
          child: StyledText(
            text: "English(US)",
            size: 8,
            color: Colors.black,
          ),
        ),
        DropdownMenuItem(
          value: "English(UK)",
          child: StyledText(
            text: "English(UK)",
            size: 8,
            color: Colors.black,
          ),
        ),
      ],
      onChanged: (value) {
        ref.read(valueProvider.notifier).state = value!;
      },
    );
  }
}

final valueProvider = StateProvider<String>((ref) {
  return "English(US)";
});

class DropDownForNumberSelecting extends ConsumerWidget {
  const DropDownForNumberSelecting({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownButton(
        padding: EdgeInsets.symmetric(horizontal: context.width(10)),
        // value: ref.watch(valueProvider),
        underline: const SizedBox(),
        focusColor: Colors.transparent,
        autofocus: false,
        isDense: false,
        style: const TextStyle(color: Colors.black),
        borderRadius: BorderRadius.circular(
          context.width(10),
        ),
        iconDisabledColor: Colors.transparent,
        iconEnabledColor: Colors.transparent,
        value: ref.watch(numberDropDown),
        items: const [
          DropdownMenuItem(
            value: "India",
            child: StyledText(
              text: "India",
              size: 8,
              color: Colors.black,
            ),
          ),
          DropdownMenuItem(
            value: "Iran",
            child: StyledText(
              text: "Iran",
              size: 8,
              color: Colors.black,
            ),
          ),
          DropdownMenuItem(
            value: "Iraq",
            child: StyledText(
              text: "Iraq",
              size: 8,
              color: Colors.black,
            ),
          ),
        ],
        onChanged: (value) {
          ref.read(numberDropDown.notifier).state = value!;
        });
  }
}

final numberDropDown = StateProvider<String>((ref) {
  return "India";
});
