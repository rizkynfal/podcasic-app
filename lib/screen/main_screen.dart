import 'package:flutter/material.dart';
import 'package:podcasic_app/constant/constant.dart';
import 'package:podcasic_app/screen/home_screen/home_screen.dart';
import 'package:podcasic_app/screen/search_screen/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentSreenIndex = 0;
  final List<Widget> screenViewList = [
    const HomeScreen(),
    const SearchScreen()
  ];

  @override
  Widget build(BuildContext context) {
    void onScreenSelected(int index) {
      setState(() {
        currentSreenIndex = index;
      });
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.values[3],
            color: primaryBlackColor,
            gradient: RadialGradient(
                center: const Alignment(1.2, -0.3),
                radius: 1.2,
                colors: <Color>[primaryPurpleColor, secondaryBlackColor])),
        child: screenViewList.elementAt(currentSreenIndex),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(width: 2, color: primaryPurpleColor)),
        backgroundColor: secondaryBlackColor,
        onPressed: null,
        child: Icon(
          Icons.person_2,
          color: primaryPurpleColor,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        height: 65,
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        shape: const CircularNotchedRectangle(),
        color: secondaryBlackColor,
        child: BottomNavigationBar(
          iconSize: 20,
          type: BottomNavigationBarType.fixed,
          backgroundColor: secondaryBlackColor,
          onTap: onScreenSelected,
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          currentIndex: currentSreenIndex,
          selectedItemColor: primaryWhiteColor,
          unselectedItemColor: botNavBarColor,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.album_outlined),
              label: "Playlist",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
