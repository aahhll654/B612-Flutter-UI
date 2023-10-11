import 'package:flutter/material.dart';

class FestivalCard extends StatelessWidget {
  final String title, image;
  final int price;

  const FestivalCard({
    super.key,
    required this.title,
    required this.image,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: const Color(0xFFFFFFFF),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 12,
              ),
              Container(
                width: 76,
                height: 76,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'assets/images/$image',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Color(0xFF1F1F21),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    '$price만 원',
                    style: const TextStyle(
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: Color(0xFF3E3E40),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Row(
            children: [
              Icon(
                Icons.keyboard_arrow_right_outlined,
                size: 24,
                color: Color(0xFFBABABA),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
