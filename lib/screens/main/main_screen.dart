import 'package:admin/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              /// Default flex = 1
              /// Phần tử đầu tiên chiếm một phần trong tổng số các phần của màn hình
              child: SideMenu(),
            ),
            Expanded(
              /// Phần tử thứ hai chiếm 5 phần tức là 5/6 tổng số các phần
              flex: 5,
              child: Container(
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
