import 'package:flutter/material.dart';
import 'package:week5/widgets/festival_set.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        children: [
          Container(
            height: 126,
            decoration: const BoxDecoration(
              color: Color(0xFF2F2F2F),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        '더행사',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'ChangwonDangamAsac',
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFF4F4F4),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xFF484848),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          '공지',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontSize: 13,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFFB6FFCB),
                          ),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Text(
                          '더 행사가 출시되었어요.',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 148,
                  decoration: BoxDecoration(
                    color: const Color(0xFF83D0AB),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 24,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '더행사 첫 이벤트',
                            style: TextStyle(
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Color(0xFFD9FCE1),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '신규가입 10% 할인쿠폰\n증정 이벤트',
                            style: TextStyle(
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xFFDDFFE7).withOpacity(0.5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(
                              Icons.arrow_forward_outlined,
                              size: 20,
                              color: Color(0xFF595858),
                            ),
                          ),
                          const SizedBox(
                            width: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 27,
                ),
                const FestivalSet(),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
