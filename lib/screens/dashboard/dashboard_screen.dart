import 'package:admin/constants.dart';
import 'package:admin/screens/dashboard/components/header.dart';
import 'package:admin/screens/dashboard/components/storage_details.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    height: 500,
                    color: Colors.pink,
                  ),
                ),
                SizedBox(
                  width: defaultPadding
                ),
                Expanded(
                  flex: 2,
                  child: StorageDetails(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
