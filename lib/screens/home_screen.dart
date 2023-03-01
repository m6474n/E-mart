import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:p1/screens/Tabs/chat.dart';
import 'package:p1/screens/Tabs/orders.dart';

import 'Tabs/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;
  PageController controller = PageController();

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = [
    HomeTab(),
    OrderTab(),
    ChatTab(),
    Text('E-wallet'),
    Text('Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 15.0, left: 15, right: 15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.orange.shade400,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
            child: GNav(
                gap: 8,
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                backgroundColor: Colors.orange.shade400,
                tabBackgroundColor: Colors.orange.shade300,
                activeColor: Colors.white,
                color: Colors.white,
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: "Home",
                  ),
                  GButton(
                    icon: Icons.ballot,
                    text: "Orders",
                  ),
                  GButton(
                    icon: Icons.markunread,
                    text: "Messages",
                  ),
                  GButton(
                    icon: Icons.wallet,
                    text: "E-wallet",
                  ),
                  GButton(
                    icon: Icons.person,
                    text: "Profile",
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
