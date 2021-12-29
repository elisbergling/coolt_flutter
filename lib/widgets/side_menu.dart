import 'package:coolt_flutter/providers/state_providers.dart';
import 'package:coolt_flutter/screens/logout_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../constants/colors.dart';

class SideMenu extends HookWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: grey,
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(
              'Coolt Flutter',
              style: TextStyle(color: white, fontSize: 30),
            ),
            SizedBox(height: 40),
            DrawerListTile(
              title: 'Home',
              icon: Icons.home_outlined,
              index: 0,
            ),
            DrawerListTile(
              title: 'Calender',
              icon: Icons.calendar_view_month_rounded,
              index: 1,
            ),
            DrawerListTile(
              title: 'Messages',
              icon: Icons.email_outlined,
              index: 2,
            ),
            DrawerListTile(
              title: 'Support',
              icon: Icons.contact_support_outlined,
              index: 3,
            ),
            DrawerListTile(
              title: 'Activity',
              icon: Icons.pie_chart_outlined,
              index: 4,
            ),
            DrawerListTile(
              title: 'Settings',
              icon: Icons.settings_outlined,
              index: 5,
            ),
            Expanded(child: Container()),
            DrawerListTile(
              title: 'Logout',
              icon: Icons.logout,
              index: null,
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends HookWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.index,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final int? index;

  @override
  Widget build(BuildContext context) {
    final pageIndex = useProvider(pageIndexProvider);

    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: pageIndex.state == index ? Colors.blue : null,
      ),
      child: ListTile(
        onTap: () => index != null
            ? context.read(pageIndexProvider).state = index!
            : Navigator.of(context).pushReplacementNamed(LogoutScreen.routeName),
        horizontalTitleGap: 0.0,
        leading: Icon(
          icon,
          color: pageIndex.state != index ? Colors.white54 : white,
        ),
        title: Text(
          title,
          style: TextStyle(color:  pageIndex.state != index ? Colors.white54 : white),
        ),
      ),
    );
  }
}
