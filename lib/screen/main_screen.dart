import 'package:flutter/material.dart';
import 'package:podcasic_app/constant/constant.dart';
import 'package:podcasic_app/screen/home_screen/home_screen.dart';
import 'package:podcasic_app/screen/playlist_screen/playlist_screen.dart';
import 'package:podcasic_app/screen/search_screen/search_screen.dart';
import 'package:floating_action_wheel/floating_action_wheel.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentSreenIndex = 0;
  final List<Widget> screenViewList = [
    const HomeScreen(),
    const SearchScreen(),
    const PlaylistScreen()
  ];
  late bool fabPressed = false;
  @override
  void initState() {
    super.initState();
    setState(() {
      fabPressed = false;
    });
  }

  void changeBg() {
    setState(() {
      fabPressed = true;
    });
  }

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
                colors: fabPressed
                    ? <Color>[primaryPurpleColor, secondaryBlackColor]
                    : <Color>[primaryPurpleColor, secondaryBlackColor])),
        child: screenViewList.elementAt(currentSreenIndex),
      ),
      floatingActionButton: FloatingActionButton(
        autofocus: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(width: 2, color: primaryPurpleColor)),
        backgroundColor: secondaryBlackColor,
        onPressed: () => changeBg(),
        child: FloatingActionWheel(
          buttons: [
            WheelButton(
                onPressed: () {
                  setState(() {});
                },
                icon: Icons.person,
                backgroundColor: secondaryWhiteColor.withOpacity(0.5)),
            WheelButton(
                onPressed: () {
                  setState(() {});
                },
                icon: Icons.heart_broken,
                backgroundColor: secondaryWhiteColor.withOpacity(0.5)),
            WheelButton(
                onPressed: () {
                  setState(() {});
                },
                icon: Icons.history,
                backgroundColor: secondaryWhiteColor.withOpacity(0.5)),
          ],
          angleOffset: 180,
          fabElevation: 20,
          visiblePart: 0.5,
          animationType: WheelAnimationType.center,
          wheelSize: WheelSize.wheel_large_150,
          fabBackgroundColor: secondaryBlackColor,
          separated: true,
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
