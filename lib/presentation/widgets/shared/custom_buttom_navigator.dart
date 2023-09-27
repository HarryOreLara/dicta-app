import 'package:dicta_app/presentation/screens/screens.dart';
import 'package:flutter/material.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({super.key});

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  final PageController _pageController = PageController();

  int _selectedIndex = 0;

  final List<Widget> _screen = [
    const HomeScreen(),
    const CategoriasScreen(),
    const ServiciosScreen(),
    const CursosScreen()
  ];

  //
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //
  void _onItemTapped(int i) {
    _pageController.jumpToPage(i);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: _onPageChanged,
          children: _screen,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color(0xFF003976),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
                color: Colors.red,
              ),
              label: 'Categorias',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.design_services,
                color: Color.fromARGB(255, 255, 165, 29),
              ),
              label: 'Servicios',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
                color: Colors.green,
              ),
              label: 'Cursos',
            )
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromARGB(255, 0, 0, 0),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
