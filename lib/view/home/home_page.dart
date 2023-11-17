import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hello24_ai/extensions/responsive_size.dart';
import 'package:hello24_ai/provider/selection_container.dart';
import 'package:hello24_ai/provider/setting.dart';
import 'package:hello24_ai/view/settings/settings_main.dart';
import 'package:hello24_ai/widgets/selection_container.dart';
import 'package:hello24_ai/widgets/styled_text.dart';
import 'package:hello24_ai/widgets/textfield.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingschek = ref.watch(settingCheking);
    final selectionCont = ref.watch(selectionContainer);
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/pexels-johannes-plenio-1435075.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: context.width(10)),
            child: Column(
              children: [
                SizedBox(
                  height: context.width(7),
                ),
                _topRow(context, settingschek, ref),
                SizedBox(
                  height: context.width(5),
                ),
                Row(
                  children: [
                    _firstRowOfEmailSection(context, selectionCont, ref),
                    SizedBox(
                      width: context.width(10),
                    ),
                    _middleRowOfEmail(settingschek, context, ref),
                    SizedBox(
                      width: context.width(10),
                    ),
                    if (settingschek == true)
                      _settingsSizeContainer(context, ref)
                    else
                      const SizedBox(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _settingsSizeContainer(BuildContext context, WidgetRef ref) {
    return Container(
      width: context.width(220),
      height: context.width(500),
      decoration: BoxDecoration(
        color: const Color(0x66FFFFFF),
        borderRadius: BorderRadius.circular(
          context.width(10),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(context.width(10)),
        child: Column(
          children: [
            Row(
              children: [
                const StyledText(text: "Quick Setting", size: 11),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    ref.read(settingCheking.notifier).state = false;
                  },
                  icon: Icon(
                    Icons.close,
                    size: context.width(12),
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: context.width(15),
            ),
            GestureDetector(
              onTap: () {
                ref.read(settingCheking.notifier).state = false;
                ref.read(settingpagechangeProvider.notifier).state = true;
              },
              child: Container(
                width: context.width(200),
                height: context.width(30),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: const Color.fromARGB(255, 88, 88, 88),
                  ),
                  borderRadius: BorderRadius.circular(
                    context.width(15),
                  ),
                ),
                child: const Center(
                  child: StyledText(
                    text: "See All Settings",
                    size: 11,
                    color: Color.fromARGB(255, 0, 66, 119),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // this the mail box columns container

  Container _middleRowOfEmail(
      bool settingschek, BuildContext context, WidgetRef ref) {
    return ref.watch(settingpagechangeProvider) == false
        ? Container(
            width:
                settingschek == false ? context.width(800) : context.width(580),
            height: context.width(500),
            decoration: BoxDecoration(
              color: const Color(0x66FFFFFF),
              borderRadius: BorderRadius.circular(
                context.width(10),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(context.width(10)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.square,
                        size: context.width(13),
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        size: context.width(10),
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: context.width(20),
                      ),
                      Icon(
                        Icons.replay_rounded,
                        size: context.width(12),
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: context.width(18),
                      ),
                      Icon(
                        Icons.more_vert,
                        size: context.width(13),
                        color: Colors.white,
                      ),
                      const Spacer(),
                      const StyledText(text: "1-50", size: 10),
                      SizedBox(
                        width: context.width(10),
                      ),
                      Icon(
                        Icons.keyboard_arrow_left_outlined,
                        size: context.width(11),
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: context.width(10),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_outlined,
                        size: context.width(11),
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.width(10),
                  ),
                ],
              ),
            ),
          )
        : settingsOpen(context, ref);
  }

  SizedBox _firstRowOfEmailSection(
      BuildContext context, int selectionCont, WidgetRef ref) {
    return SizedBox(
      width: context.width(190),
      height: context.width(400),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: context.width(20),
          ),
          Row(
            children: [
              SizedBox(
                width: context.width(8),
              ),
              Container(
                width: context.width(120),
                height: context.width(45),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    context.width(10),
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.pen,
                        color: Colors.black,
                        size: context.width(18),
                      ),
                      SizedBox(
                        width: context.width(6),
                      ),
                      const StyledText(
                        text: "Compose",
                        fontWeight: FontWeight.w500,
                        size: 13,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: context.width(15),
          ),
          GestureDetector(
            onTap: () {
              ref.read(selectionContainer.notifier).state = 0;
            },
            child: SelectionContainerFirstRow(
              text: "Inbox",
              color: selectionCont == 0
                  ? const Color(0x66FFFFFF)
                  : Colors.transparent,
              icon: Icon(
                Icons.inbox,
                color: Colors.white,
                size: context.width(11),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              ref.read(selectionContainer.notifier).state = 1;
            },
            child: SelectionContainerFirstRow(
              text: "Starred",
              color: selectionCont == 1
                  ? const Color(0x66FFFFFF)
                  : Colors.transparent,
              icon: Icon(
                Icons.star_border,
                color: Colors.white,
                size: context.width(11),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              ref.read(selectionContainer.notifier).state = 2;
            },
            child: SelectionContainerFirstRow(
              text: "Snoozed",
              color: selectionCont == 2
                  ? const Color(0x66FFFFFF)
                  : Colors.transparent,
              icon: Icon(
                Icons.snooze,
                color: Colors.white,
                size: context.width(11),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              ref.read(selectionContainer.notifier).state = 3;
            },
            child: SelectionContainerFirstRow(
              text: "Sent",
              color: selectionCont == 3
                  ? const Color(0x66FFFFFF)
                  : Colors.transparent,
              icon: Icon(
                Icons.send_outlined,
                color: Colors.white,
                size: context.width(11),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              ref.read(selectionContainer.notifier).state = 4;
            },
            child: SelectionContainerFirstRow(
              text: "Draftes",
              color: selectionCont == 4
                  ? const Color(0x66FFFFFF)
                  : Colors.transparent,
              icon: Icon(
                Icons.book_rounded,
                color: Colors.white,
                size: context.width(11),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              ref.read(selectionContainer.notifier).state = 5;
            },
            child: SelectionContainerFirstRow(
              text: "More",
              color: selectionCont == 5
                  ? const Color(0x66FFFFFF)
                  : Colors.transparent,
              icon: Icon(
                CupertinoIcons.chevron_down,
                color: Colors.white,
                size: context.width(11),
              ),
            ),
          ),
          SizedBox(
            height: context.width(20),
          ),
        ],
      ),
    );
  }

// this is the first row of email web applitions starting includes
// search box and profile settings row
  Row _topRow(
    BuildContext context,
    bool setting,
    WidgetRef ref,
  ) {
    final settingChek = ref.watch(settingCheking);
    return Row(
      children: [
        SizedBox(
          width: context.width(10),
        ),
        Icon(
          Icons.menu,
          color: Colors.white,
          size: context.width(20),
        ),
        SizedBox(
          width: context.width(10),
        ),
        SizedBox(
          height: context.width(40),
          width: context.width(40),
          child: Image.asset(
            "assets/Download_Gmail_Logotype_Flat_Vector_Illustration-removebg-preview.png",
          ),
        ),
        const StyledText(
          text: "Gmail",
          size: 18,
        ),
        SizedBox(
          width: context.width(70),
        ),
        Container(
          width: context.width(500),
          height: context.width(36),
          decoration: BoxDecoration(
            color: const Color(0x66FFFFFF),
            borderRadius: BorderRadius.circular(
              context.width(20),
            ),
          ),
          child: const ModifieldTextField(),
        ),
        const Spacer(),
        Icon(
          CupertinoIcons.info,
          size: context.width(18),
          color: Colors.white,
        ),
        SizedBox(
          width: context.width(15),
        ),
        GestureDetector(
          onTap: () {
            // there is the condition working if page changed into settings
            // the settings side never open othervise the settings side will open
            if (ref.watch(settingpagechangeProvider) == true) {
              return;
            } else {
              ref.read(settingCheking.notifier).state = !settingChek;
            }
          },
          child: Icon(
            CupertinoIcons.settings,
            size: context.width(18),
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: context.width(15),
        ),
        Icon(
          Icons.apps,
          size: context.width(18),
          color: Colors.white,
        ),
        SizedBox(
          width: context.width(15),
        ),
        CircleAvatar(
          radius: context.width(13),
        ),
        SizedBox(
          width: context.width(20),
        )
      ],
    );
  }
}
