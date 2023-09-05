import 'package:flutter/material.dart';
import 'package:old_seniora_fans/view/constant/strings.dart';
import 'package:old_seniora_fans/view/screens/trophies_view/widget/heading_text_widget.dart';
import 'package:old_seniora_fans/view/screens/trophies_view/widget/paragraph_text_widget.dart';

class TrophiesScreenView extends StatelessWidget {
  const TrophiesScreenView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          opacity: 0.7,
          image: AssetImage(
            'assets/images/backgroundmain.png',
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: const Image(
                        height: 210,
                        width: 316,
                        image: AssetImage(
                          "assets/images/trophies.png",
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    HeadingTextWidget(
                      title: Strings.headingTOne,
                    ),
                    ParagraphTextWidget(
                      paragraphText: Strings.dateOne,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    HeadingTextWidget(
                      title: Strings.headingTTwo,
                    ),
                    ParagraphTextWidget(
                      paragraphText: Strings.dateTwo,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    HeadingTextWidget(
                      title: Strings.headingTThree,
                    ),
                    ParagraphTextWidget(
                      paragraphText: Strings.dateThree,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    HeadingTextWidget(
                      title: Strings.headingTFour,
                    ),
                    ParagraphTextWidget(
                      paragraphText: Strings.dateFour,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    HeadingTextWidget(
                      title: Strings.headingTFive,
                    ),
                    ParagraphTextWidget(
                      paragraphText: Strings.dateFive,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    HeadingTextWidget(
                      title: Strings.headingTSix,
                    ),
                    ParagraphTextWidget(
                      paragraphText: Strings.dateSix,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    HeadingTextWidget(
                      title: Strings.headingTSeven,
                    ),
                    ParagraphTextWidget(
                      paragraphText: Strings.dateSeven,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    HeadingTextWidget(
                      title: Strings.headingTEight,
                    ),
                    ParagraphTextWidget(
                      paragraphText: Strings.dateEight,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    HeadingTextWidget(
                      title: Strings.headingTNine,
                    ),
                    ParagraphTextWidget(
                      paragraphText: Strings.dateNine,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    HeadingTextWidget(
                      title: Strings.headingTTen,
                    ),
                    ParagraphTextWidget(
                      paragraphText: Strings.dateTen,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 5,
            width: double.infinity,
            color: const Color(0xff282828),
          ),
          Container(
            height: 5,
            width: double.infinity,
            color: const Color(0xffD9D9D9),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: const Color(0xff282828),
            ),
          ),
        ],
      ),
    );
  }
}
