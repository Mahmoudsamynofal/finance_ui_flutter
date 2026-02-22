import "package:finance_ui/screens/pages/widget/bar_chart_flow.dart";
import "package:finance_ui/shard/themes/app_color.dart";
import "package:finance_ui/shard/themes/app_stayls.dart";
import "package:fl_chart/fl_chart.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class Statatics extends StatelessWidget {
  const Statatics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reload", style: Stayls.titleProfile),

        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 236.h,
            width: double.infinity,
            child: BarChartFlow(barTouchData: barTouchData, titlesData: titlesData, borderData: borderData, barGroups: barGroups),
          ),
        ],
      ),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
    enabled: false,
    touchTooltipData: BarTouchTooltipData(
      tooltipBgColor: Colors.transparent,
      tooltipPadding: EdgeInsets.zero,
      tooltipMargin: 10,
      getTooltipItem:
          (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            return BarTooltipItem(
              rod.toY.round().toString(),
              const TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold),
            );
          },
    ),
  );

  Widget getTitles(double value, TitleMeta meta) {
    final style = TextStyle(
      color: Colors.blue,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text = switch (value.toInt()) {
      0 => 'Mn',
      1 => 'Te',
      2 => 'Wd',
      3 => 'Tu',
      4 => 'Fr',
      5 => 'St',
      6 => 'Sn',
      _ => '',
    };
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(text, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
    show: true,
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 30,
        getTitlesWidget: getTitles,
      ),
    ),
    leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: true,reservedSize: 10,)),
    topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
    rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
  );

  FlBorderData get borderData => FlBorderData(show: false);

  LinearGradient get _barsGradient => LinearGradient(
    colors: [AppColor.primryColor, AppColor.primryColor],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );

  List<BarChartGroupData> get barGroups => [
    BarChartGroupData(
      barsSpace: 5,
      x: 0,
      barRods: [
        BarChartRodData(
          width: 12,
          toY: 15,
          gradient: _barsGradient,
          borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
        ),
       BarChartRodData(
          width: 12,
          toY: 7,
          gradient: LinearGradient(colors: [AppColor.black, AppColor.black]),
          borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
        ),
      ],
    ),
    BarChartGroupData(
      x: 1,
       barRods: [
        BarChartRodData(
          width: 12,
          toY: 15,
          gradient: _barsGradient,
          borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
        ),
       BarChartRodData(
          width: 12,
          toY: 7,
          gradient: LinearGradient(colors: [AppColor.black, AppColor.black]),
          borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
        ),
      ],
    ),
    BarChartGroupData(
      x: 2,
      barRods: [
        BarChartRodData(
          width: 12,
          toY: 15,
          gradient: _barsGradient,
          borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
        ),
       BarChartRodData(
          width: 12,
          toY: 7,
          gradient: LinearGradient(colors: [AppColor.black, AppColor.black]),
          borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
        ),
      ],
    ),
    BarChartGroupData(
      x: 3,
       barRods: [
        BarChartRodData(
          width: 12,
          toY: 15,
          gradient: _barsGradient,
          borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
        ),
       BarChartRodData(
          width: 12,
          toY: 7,
          gradient: LinearGradient(colors: [AppColor.black, AppColor.black]),
          borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
        ),
      ],
    ),
    BarChartGroupData(
      x: 4,
       barRods: [
        BarChartRodData(
          width: 12,
          toY: 15,
          gradient: _barsGradient,
          borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
        ),
       BarChartRodData(
          width: 12,
          toY: 7,
          gradient: LinearGradient(colors: [AppColor.black, AppColor.black]),
          borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
        ),
      ],
    ),
   
    
  ];
}


