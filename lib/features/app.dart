import 'package:flutter/material.dart';
import 'package:cashier/features/menu/presentation/pages/menu_page.dart';
import 'package:cashier/features/cart/presentation/pages/cart_page.dart';
import 'package:cashier/features/history/presentation/pages/history_page.dart';
import 'package:cashier/features/settings/presentation/pages/settings_page.dart';

class CashierApp extends StatelessWidget {
  const CashierApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Café POS',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: const Color(0xFFFF4747),
          secondary: const Color(0xFF333333),
          background: const Color(0xFFF7F7F7),
          surface: Colors.white,
          error: Colors.red,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onBackground: const Color(0xFF333333),
          onSurface: const Color(0xFF333333),
          onError: Colors.white,
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const MenuPage(),
    const CartPage(),
    const HistoryPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(0, Icons.restaurant_menu, 'Menu'),
            _buildNavItem(1, Icons.shopping_cart, 'Cart'),
            const SizedBox(width: 48), // Space for FAB
            _buildNavItem(2, Icons.history, 'History'),
            _buildNavItem(3, Icons.settings, 'Settings'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement add menu item functionality
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildNavItem(int index, IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: IconButton(
        icon: Icon(icon),
        onPressed: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        color: _selectedIndex == index
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.onBackground.withOpacity(0.6),
      ),
    );
  }
}