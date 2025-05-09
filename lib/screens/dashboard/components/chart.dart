import 'package:admin/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
                sections: pieCharSectiontDatas, // Danh sách các phần của biểu đồ
                startDegreeOffset: -90, // Tọa độ của biểu đồ
                sectionsSpace: 0, // Khoảng cách giữa các phần của biểu đồ
                centerSpaceRadius: 70), // Khoảng cách từ tâm đường tròn đến viềnviền
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: defaultPadding,
                ),
                Text(
                  '29.1',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 28,
                      height: 0.5),
                ),
                SizedBox(height: defaultPadding / 2),
                Text('of 128 GB'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieCharSectiontDatas = [
  PieChartSectionData(
      radius: 25, color: primaryColor, value: 25, showTitle: false),
  PieChartSectionData(
      radius: 22, color: Color(0xFF26E5FF), value: 20, showTitle: false),
  PieChartSectionData(
      radius: 19, color: Color(0xFFFFCF26), value: 10, showTitle: false),
  PieChartSectionData(
      radius: 16, color: Color(0xFFEE2727), value: 15, showTitle: false),
  PieChartSectionData(
      radius: 13,
      color: primaryColor.withValues(alpha: 0.1),
      value: 25,
      showTitle: false)
];
