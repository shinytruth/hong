import 'package:flutter/material.dart';

import 'color_schemes/color_schemes.g5.dart';

void main() {
  runApp(const AppMainScreen());
}

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({super.key});

  @override
  State<AppMainScreen> createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: _Scaffold(context),
    );
  }

  Widget _Scaffold(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
    return Scaffold(
      appBar: AppBar(
        title: const Text("우리동네 홍반장"),
        centerTitle: true,
        elevation: 2.0,
      ),
      body: <Widget>[
        const NaviDest01(),
        const NaviDest02(),
        const NaviDest03(),
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.explore), label: "Explore"),
          NavigationDestination(icon: Icon(Icons.commute), label: "Commute"),
          NavigationDestination(icon: Icon(Icons.bookmark), label: "Bookmark"),
        ],
      ),
    );
  }
}

class NaviDest01 extends StatelessWidget {
  const NaviDest01({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class NaviDest02 extends StatelessWidget {
  const NaviDest02({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class NaviDest03 extends StatelessWidget {
  const NaviDest03({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
