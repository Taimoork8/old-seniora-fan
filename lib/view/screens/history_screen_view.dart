import 'package:flutter/material.dart';
import 'package:old_seniora_fans/view/constant/strings.dart';

class HistoryScreenView extends StatelessWidget {
  const HistoryScreenView({
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
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset('assets/images/history.png'),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                offset: const Offset(0, 4),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      Strings.historyTitle,
                      style: const TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(
                          0xffD9B24F,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      Strings.historyPageText,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        color: Color(0xff4F4F4F),
                        height: 2.5,
                        fontSize: 12,
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal,
                      ),
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
