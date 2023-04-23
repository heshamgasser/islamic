import 'package:flutter/material.dart';
import 'package:islamic_app/tabs/ahadeth.dart';
import 'package:islamic_app/tabs/quran.dart';
import 'package:islamic_app/tabs/radio.dart';
import 'package:islamic_app/tabs/sebha.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home Screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 3;
  List<Widget> tabs = [
    const RadioTab(),
    const SebhaTab(),
    const AhadethTab(),
    const QuranTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: double.infinity,
            child: Image(
              image: AssetImage('assets/images/backgroung.png'),
              fit: BoxFit.cover,
            )),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'إسلامي',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body: tabs[index],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage('assets/images/radio.png'),
                  ),
                  label: 'الراديو',
                  backgroundColor: Theme.of(context)
                      .bottomNavigationBarTheme
                      .backgroundColor),
              BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage('assets/images/sebha.png'),
                  ),
                  label: 'التسبيح',
                  backgroundColor: Theme.of(context)
                      .bottomNavigationBarTheme
                      .backgroundColor),
              BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage('assets/images/ahadeth.png'),
                  ),
                  label: 'الأحاديث',
                  backgroundColor: Theme.of(context)
                      .bottomNavigationBarTheme
                      .backgroundColor),
              BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage('assets/images/quran_gold.png'),
                  ),
                  label: 'القرآن',
                  backgroundColor: Theme.of(context)
                      .bottomNavigationBarTheme
                      .backgroundColor),
            ],
          ),
        ),
      ],
    );
  }
}
