import 'package:flutter/material.dart';
import 'package:old_seniora_fans/view/screens/gallery_view/img_list.dart';

class GalleryScreenView extends StatelessWidget {
  const GalleryScreenView({
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
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: ListView.builder(
                itemCount: imgList.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: Image(
                      height: 281,
                      width: 316,
                      fit: BoxFit.cover,
                      image: AssetImage(
                        imgList[index],
                      ),
                    ),
                  );
                },
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
