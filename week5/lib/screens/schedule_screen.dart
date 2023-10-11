import 'package:flutter/material.dart';
import 'package:week5/widgets/festival_card.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 18,
                ),
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
                SizedBox(
                  height: 18,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
