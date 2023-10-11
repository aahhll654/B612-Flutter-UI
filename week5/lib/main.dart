import 'package:flutter/material.dart';
import 'package:week5/screens/home_screen.dart';
import 'package:week5/screens/schedule_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int bottomNavigationBarIndex = 0;
  final List<Widget> screenList = [
    const HomeScreen(),
    const ScheduleScreen(),
    const SizedBox(),
    const SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        appBar: makeAppBar(bottomNavigationBarIndex),
        bottomNavigationBar: SizedBox(
          height: 90,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xFFFFFFFF).withOpacity(0.8),
            unselectedItemColor: const Color(0xFF6C6C6C),
            selectedItemColor: const Color(0xFF2F2F2F),
            elevation: 0,
            currentIndex: bottomNavigationBarIndex,
            onTap: (value) {
              setState(() {
                bottomNavigationBarIndex = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: '홈',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_today_outlined,
                ),
                label: '스케줄',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_outlined,
                ),
                label: '채팅',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.perm_identity_outlined,
                ),
                label: 'My',
              ),
            ],
          ),
        ),
        backgroundColor: const Color(0xFFF8F8F8),
        body: screenList[bottomNavigationBarIndex],
      ),
    );
  }

  AppBar makeAppBar(int index) {
    if (index == 0) {
      return AppBar(
        backgroundColor: const Color(0xFF2F2F2F),
        toolbarHeight: 0,
        elevation: 0,
      );
    } else if (index == 1) {
      return AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0,
        toolbarHeight: 50,
        leading: IconButton(
          onPressed: () {
            setState(() {
              bottomNavigationBarIndex = 0;
            });
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: const Text(
          '예약된 세트',
          style: TextStyle(
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w700,
            fontSize: 15,
            color: Color(0xFF1F1F21),
          ),
        ),
        centerTitle: true,
      );
    } else {
      return AppBar();
    }
  }
}
