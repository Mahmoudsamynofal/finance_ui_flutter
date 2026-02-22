import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartFlow extends StatelessWidget {
  const BarChartFlow({
    super.key,
    required this.barTouchData,
    required this.titlesData,
    required this.borderData,
    required this.barGroups,
  });

  final BarTouchData barTouchData;
  final FlTitlesData titlesData;
  final FlBorderData borderData;
  final List<BarChartGroupData> barGroups;

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        extraLinesData: ExtraLinesData(horizontalLines: [
          HorizontalLine(
            y: 15,
           color: Color(0XFFE3E9ED),
            strokeWidth: 0.75,
            dashArray: [5, 5],
          ),
          HorizontalLine(
          
            y: 10,
           color: Color(0XFFE3E9ED),
            strokeWidth:  0.75,
            dashArray: [5, 5],
          ),
           HorizontalLine(
            y: 5,
            color: Color(0XFFE3E9ED),
            strokeWidth:  0.75,
            dashArray: [5, 5],
          ),
        ]),
        barTouchData: barTouchData,
        titlesData: titlesData,
        borderData: borderData,
        barGroups: barGroups,
        gridData: const FlGridData(show: false),
        alignment: BarChartAlignment.spaceAround,
        maxY: 20,
      ),
    );

  }
  
}