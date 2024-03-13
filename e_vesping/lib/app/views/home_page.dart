import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController _controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 192, 230, 193),
      appBar: AppBar(
        title: const Text(
          'e-vesping',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lato',
          ),
        ),
        centerTitle: true,
      ),
      body: Obx(() {
        switch (_controller.selectedIndex.value) {
          case 0:
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 2.0,
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 10.0,
                children: List.generate(10, (index) {
                  return Container(color: Colors.red);
                }),
              ),
            );
          case 1:
            return const Text('Tours Page');
          case 2:
            return const Text('Search Page');
          case 3:
            return const Text('Profile Page');
          default:
            return const Text('Home Page');
        }
      }),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.route_outlined),
              label: 'Tours',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _controller.selectedIndex.value,
          unselectedItemColor: Colors.grey[600],
          selectedItemColor: Colors.amber[800],
          onTap: _controller.changeTabIndex,
        );
      }),
    );
  }
}
