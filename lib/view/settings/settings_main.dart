import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hello24_ai/extensions/responsive_size.dart';
import 'package:hello24_ai/widgets/dropdown.dart';
import 'package:hello24_ai/widgets/styled_text.dart';

Container settingsOpen(BuildContext context, WidgetRef ref) {
  final fontsize = ref.watch(fontSizeProvider);
  final fontfamily = ref.watch(fontfamilyProvider);
  final listname = TextEditingController();
  final List<String> list = [];
  return Container(
    width: context.width(800),
    height: context.width(500),
    decoration: BoxDecoration(
      color: const Color(0x66FFFFFF),
      borderRadius: BorderRadius.circular(
        context.width(10),
      ),
    ),
    child: Padding(
      padding:
          EdgeInsets.only(top: context.width(10), right: context.width(10)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: StyledText(text: "Settings", size: 15),
            ),
            SizedBox(
              height: context.width(5),
            ),
            Container(
              width: context.width(800),
              height: context.width(472),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    context.width(10),
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(context.width(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const StyledText(
                      text: "Themes",
                      size: 11,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: context.width(5),
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const StyledText(
                          text: "Language:",
                          size: 13,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: context.width(80),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const StyledText(
                                  text: "Gmail display language: ",
                                  size: 12,
                                  color: Colors.black,
                                ),
                                Container(
                                  width: context.width(180),
                                  height: context.width(20),
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 1),
                                    borderRadius: BorderRadius.circular(
                                      context.width(5),
                                    ),
                                  ),
                                  child: const DropDownButton(),
                                ),
                                SizedBox(
                                  width: context.width(5),
                                ),
                                const StyledText(
                                  text:
                                      "Change language settings for other Google products",
                                  size: 11,
                                  color: Colors.blue,
                                )
                              ],
                            ),
                            const StyledText(
                              text: "Show all language options",
                              size: 10,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              height: context.width(5),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 104, 104, 104),
                    ),
                    SizedBox(
                      height: context.width(5),
                    ),
                    Row(
                      children: [
                        const StyledText(
                          text: "Phone numbers:",
                          size: 13,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: context.width(47),
                        ),
                        const StyledText(
                          text: "Default country code:",
                          size: 12,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: context.width(3),
                        ),
                        Container(
                          width: context.width(150),
                          height: context.width(20),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(context.width(5)),
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                          child: const DropDownForNumberSelecting(),
                        )
                      ],
                    ),
                    SizedBox(
                      height: context.width(5),
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 104, 104, 104),
                    ),
                    SizedBox(
                      height: context.width(5),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const StyledText(
                              text: "Default text style:",
                              size: 12,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: context.width(130),
                              child: const StyledText(
                                text:
                                    "(Use the 'Remove formatting' button on the toolbar to reset the default text style)",
                                size: 9,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: context.width(10),
                        ),
                        Container(
                          // width: context.width(200),
                          // height: context.width(60),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                offset: Offset(5, 5),
                                spreadRadius: -5,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(context.width(5)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    DropdownButton(
                                      value: ref.watch(fontfamilyProvider),
                                      underline: const SizedBox(),
                                      hint: const Text("Select Font"),
                                      items: const [
                                        DropdownMenuItem(
                                          value: "Normal",
                                          child: StyledText(
                                            text: "Normal",
                                            size: 11,
                                            fontFamily: 's',
                                            color: Colors.black,
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: "Albertsans",
                                          child: StyledText(
                                            text: "Albertsans",
                                            size: 11,
                                            color: Colors.black,
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: "Pacifio",
                                          child: StyledText(
                                            text: "Pacifio",
                                            size: 11,
                                            fontFamily: "Pacifio",
                                            color: Colors.black,
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: "Playfair",
                                          child: StyledText(
                                            text: "Playfair",
                                            size: 11,
                                            fontFamily: "Playfair",
                                            color: Colors.black,
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: "RobotoMono",
                                          child: StyledText(
                                            text: "RobotoMono",
                                            size: 11,
                                            fontFamily: "RobotoMono",
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                      onChanged: (value) {
                                        ref
                                            .read(fontfamilyProvider.notifier)
                                            .state = value!;
                                      },
                                    ),
                                    SizedBox(
                                      width: context.width(10),
                                    ),
                                    DropdownButton(
                                      // iconDisabledColor: Colors.transparent,
                                      // iconEnabledColor: Colors.transparent,

                                      hint: Icon(
                                        Icons.text_fields_outlined,
                                        color: Colors.black,
                                        size: context.width(18),
                                      ),
                                      underline: const SizedBox(),
                                      items: const [
                                        DropdownMenuItem(
                                          value: 0,
                                          child: StyledText(
                                            text: "S",
                                            size: 8,
                                            color: Colors.black,
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 1,
                                          child: StyledText(
                                            text: "N",
                                            size: 11,
                                            color: Colors.black,
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 2,
                                          child: StyledText(
                                            text: "L",
                                            size: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 3,
                                          child: StyledText(
                                            text: "H",
                                            size: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                      onChanged: (value) {
                                        ref
                                            .read(fontSizeProvider.notifier)
                                            .state = value!;
                                      },
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          ref
                                              .read(fontSizeProvider.notifier)
                                              .state = 1;
                                          ref
                                              .read(fontfamilyProvider.notifier)
                                              .state = "Normal";
                                        },
                                        icon: const Icon(Icons.no_drinks_sharp))
                                  ],
                                ),
                                StyledText(
                                  text:
                                      "This is what your body text will look like.",
                                  size: fontsize == 0
                                      ? 8
                                      : fontsize == 1
                                          ? 11
                                          : fontsize == 2
                                              ? 14
                                              : 18,
                                  color: Colors.black,
                                  fontFamily: fontfamily == "Normal"
                                      ? ""
                                      : fontfamily == "Albertsans"
                                          ? "Albertsans"
                                          : fontfamily == "Pacifio"
                                              ? "Pacifio"
                                              : fontfamily == "Playfair"
                                                  ? "Playfair"
                                                  : fontfamily == "RobotoMono"
                                                      ? "RobotoMono"
                                                      : "",
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: context.width(5),
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 104, 104, 104),
                    ),
                    SizedBox(
                      height: context.width(5),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const StyledText(
                              text: "Signature:",
                              size: 12,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: context.width(130),
                              child: const StyledText(
                                text:
                                    "(appended at the end of all outgoing messages)",
                                size: 10,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: context.width(10),
                        ),
                        list.isEmpty
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const StyledText(
                                    text: "No signatures",
                                    size: 13,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    height: context.width(5),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      _alertDailogForSignatureCreate(
                                          context, listname, list);
                                    },
                                    child: Container(
                                      width: context.width(130),
                                      height: context.width(25),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(
                                          context.width(5),
                                        ),
                                      ),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.add,
                                              color: Colors.blue,
                                              size: context.width(13),
                                            ),
                                            const StyledText(
                                              text: "Create New",
                                              size: 10,
                                              color: Colors.blue,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            : Container(
                                width: context.width(300),
                                height: context.width(59),
                                color: Colors.amber,
                              )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Future<dynamic> _alertDailogForSignatureCreate(
    BuildContext context, TextEditingController listname, List<String> list) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => AlertDialog(
      content: SizedBox(
        width: context.width(500),
        height: context.width(105),
        child: Padding(
          padding: EdgeInsets.all(context.width(5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const StyledText(
                text: "Name new signature",
                size: 13,
                color: Colors.black,
              ),
              SizedBox(
                height: context.width(5),
              ),
              TextField(
                controller: listname,
                decoration: InputDecoration(
                  hintText: "Signature Name",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      context.width(2),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      context.width(2),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  const Spacer(),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: context.width(100),
                      height: context.width(30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          context.width(10),
                        ),
                      ),
                      child: const Center(
                        child: StyledText(
                          text: "Cancel",
                          size: 11,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: context.width(5),
                  ),
                  GestureDetector(
                    onTap: () {
                      list.add(listname.text);
                      listname.clear();
                      Navigator.pop(context);

                      log(list.toString());
                    },
                    child: Container(
                      width: context.width(100),
                      height: context.width(30),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(
                          context.width(10),
                        ),
                      ),
                      child: const Center(
                        child: StyledText(
                          text: "Create",
                          size: 11,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}

final fontSizeProvider = StateProvider<int>((ref) {
  return 1;
});

final fontfamilyProvider = StateProvider<String>((ref) {
  return "Normal";
});
