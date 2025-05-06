import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
          child: Column(
        children: [
          DrawerHeader(
            child: Image.asset('assets/images/logo.png'),
          ),
          DrawerListTile(
            title: 'Dashboard',
            svgSrc: 'assets/icons/menu_dashboard.svg',
            press: () {},
          ),
          DrawerListTile(
            title: 'Documents',
            svgSrc: 'assets/icons/menu_doc.svg',
            press: () {},
          ),
          DrawerListTile(
            title: 'Notifications',
            svgSrc: 'assets/icons/menu_notification.svg',
            press: () {},
          ),
          DrawerListTile(
            title: 'Profile',
            svgSrc: 'assets/icons/menu_profile.svg',
            press: () {},
          ),
          DrawerListTile(
            title: 'Settings',
            svgSrc: 'assets/icons/menu_setting.svg',
            press: () {},
          ),
          DrawerListTile(
            title: 'Store',
            svgSrc: 'assets/icons/menu_store.svg',
            press: () {},
          ),
          DrawerListTile(
            title: 'Task',
            svgSrc: 'assets/icons/menu_task.svg',
            press: () {},
          ),
          DrawerListTile(
            title: 'Transaction',
            svgSrc: 'assets/icons/menu_tran.svg',
            press: () {},
          ),
        ],
      )),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.title,
    required this.svgSrc,
    required this.press,
  });
  final String title, svgSrc;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 30, //  Khoảng cách giữa icon và text
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white.withValues(alpha: 0.45),
        width: 16,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white.withValues(alpha: 0.45),
        ),
      ),
    );
  }
}
