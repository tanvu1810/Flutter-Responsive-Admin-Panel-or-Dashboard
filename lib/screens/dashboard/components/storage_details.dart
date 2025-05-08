import 'package:admin/constants.dart';
import 'package:admin/screens/dashboard/components/chart.dart';
import 'package:admin/screens/dashboard/components/storage_infor_card.dart';
import 'package:flutter/material.dart';
class StorageDetails extends StatelessWidget {
  const StorageDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Storage Details',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInforCard(
            svgSrc: 'assets/icons/Documents.svg',
            title: 'Documents Files',
            numOfFiles: 1329,
            amountOfFiles: '1.3GB',
          ),
          StorageInforCard(
            svgSrc: 'assets/icons/media.svg',
            title: 'Media Files',
            numOfFiles: 1000,
            amountOfFiles: '1.3GB',
          ),
          StorageInforCard(
            svgSrc: 'assets/icons/folder.svg',
            title: 'Others Files',
            numOfFiles: 200,
            amountOfFiles: '1.3GB',
          ),
          StorageInforCard(
            svgSrc: 'assets/icons/unknown.svg',
            title: 'Unknown',
            numOfFiles: 232,
            amountOfFiles: '1.3GB',
          ),
        ],
      ),
    );
  }
}
