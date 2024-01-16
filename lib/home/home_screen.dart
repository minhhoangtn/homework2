import 'package:flutter/material.dart';
import 'package:homework/home/app_bar_title.dart';
import 'package:homework/content/content_list.dart';
import 'package:homework/feed/feed_list.dart';
import 'package:homework/market/market_list.dart';
import 'package:homework/widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedPageIndex = 0;

  String pageTitle(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return 'Feed';
      case 1:
        return 'Content';
      case 2:
        return 'Market';
      default:
        return '';
    }
  }

  Widget pageContent(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return const FeedList();
      case 1:
        return const ContentList();
      case 2:
        return const MarketList();
      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: AppBarTitle(
          title: pageTitle(selectedPageIndex),
        ),
      ),
      body: Column(
        children: [
          const SearchBar(),
          Expanded(
            child: pageContent(selectedPageIndex),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPageIndex,
        onTap: (index) {
          selectedPageIndex = index;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.feed),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.content_copy),
            label: 'Content',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_checkout),
            label: 'Market',
          ),
        ],
      ),
    );
  }
}
