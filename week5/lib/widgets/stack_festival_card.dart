import 'package:flutter/material.dart';

class StackFestivalCard extends StatelessWidget {
  final String image, title;
  final int price;

  const StackFestivalCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
          ),
          child: Opacity(
            opacity: 0.8,
            child: Image.asset(
              'assets/images/$image',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 16,
          top: 16,
          child: Text(
            title,
            style: const TextStyle(
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Color(0xFFF4F8FF),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: 72,
            height: 34,
            decoration: BoxDecoration(
              color: const Color(0xFF222222).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(14),
              ),
            ),
            padding: const EdgeInsets.only(
              left: 12,
              right: 12,
              top: 8,
              bottom: 10,
            ),
            child: Text(
              '$price만 원',
              style: const TextStyle(
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w600,
                fontSize: 13,
                color: Color(0xFFF1F1F1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
