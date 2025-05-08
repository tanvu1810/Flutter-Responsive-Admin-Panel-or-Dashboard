import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StorageInforCard extends StatelessWidget {
  const StorageInforCard({
    super.key,
    required this.title,
    required this.svgSrc,
    required this.amountOfFiles,
    required this.numOfFiles,
  });
  final String title, svgSrc, amountOfFiles;
  final int numOfFiles;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: primaryColor.withValues(alpha: 0.15),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(defaultPadding),
        ),
      ),
      padding: EdgeInsets.all(defaultPadding),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(svgSrc),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '$numOfFiles files',
                    style: TextStyle(
                        color: Colors.white70, fontWeight: FontWeight.w200),
                  )
                ],
              ),
            ),
          ),
          Text('$amountOfFiles'),
        ],
      ),
    );
  }
}