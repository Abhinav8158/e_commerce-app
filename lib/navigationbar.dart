import 'package:flutter/material.dart';
import 'account.dart';
import 'cart.dart';
import 'categoery.dart';
import 'home_page.dart';
import 'notification.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    Hom`e(),
    Category(), // Assuming 'Category' is your category page
    Notifications(),
    Account(),
    Cart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.indigoAccent, // Color for selected item
        unselectedItemColor: Colors.grey, // Color for unselected items
        onTap: (int index) {
          // Handle tab selection
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}
