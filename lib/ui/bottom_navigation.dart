import 'package:e_wallet/ui/components/bottom_navigation_item.dart';
import 'package:e_wallet/ui/home.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Home(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 68,
        width: 68,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
        ),
        child: Text(
          'QRIS',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        notchMargin: 6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            BottomNavigationItem('assets/svg/dashboard.svg', 'Home'),
            BottomNavigationItem('assets/svg/stats.svg', 'Riwayat'),
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            BottomNavigationItem('assets/svg/card.svg', 'Inbox'),
            BottomNavigationItem('assets/svg/person.svg', 'Profile'),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset('assets/svg/dashboard.svg'),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset('assets/svg/dashboard.svg'),
      //       label: 'Riwayat',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset('assets/svg/dashboard.svg'),
      //       label: 'Inbox',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset('assets/svg/dashboard.svg'),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
    );
  }
}
