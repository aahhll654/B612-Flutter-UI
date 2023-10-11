import 'package:flutter/material.dart';
import 'package:week5/widgets/festival_card.dart';
import 'package:week5/widgets/stack_festival_card.dart';

class FestivalSet extends StatefulWidget {
  const FestivalSet({
    super.key,
  });

  @override
  State<FestivalSet> createState() => _FestivalSetState();
}

class _FestivalSetState extends State<FestivalSet> {
  static bool isListView = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                SizedBox(
                  width: 4,
                ),
                Text(
                  '행사 세트',
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                    color: Color(0xFF1F1F21),
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  isListView = !isListView;
                });
              },
              icon: isListView == true
                  ? const Icon(
                      Icons.grid_view_outlined,
                    )
                  : const Icon(
                      Icons.list_alt_outlined,
                    ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        makeFestivalSet(isListView),
      ],
    );
  }

  Widget makeFestivalSet(bool isListView) {
    if (isListView) {
      return const Column(
        children: [
          FestivalCard(
            title: '메이저리그 체육대회',
            image: 'image1.jpeg',
            price: 150,
          ),
          SizedBox(
            height: 12,
          ),
          FestivalCard(
            title: '마이너리그 체육대회',
            image: 'image2.jpeg',
            price: 150,
          ),
          SizedBox(
            height: 12,
          ),
          FestivalCard(
            title: '대형 재롱잔치',
            image: 'image3.png',
            price: 150,
          ),
        ],
      );
    } else {
      return GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 15,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(0),
        childAspectRatio: 1 / 1,
        children: const [
          StackFestivalCard(
            image: 'image1.jpeg',
            price: 150,
            title: '메이저리그\n체육대회',
          ),
          StackFestivalCard(
            image: 'image2.jpeg',
            price: 150,
            title: '마이너리그\n체육대회',
          ),
          StackFestivalCard(
            image: 'image3.png',
            price: 150,
            title: '대형 재롱잔치',
          ),
          StackFestivalCard(
            image: 'image2.jpeg',
            price: 150,
            title: '마이너리그\n체육대회',
          ),
        ],
      );
    }
  }
}
