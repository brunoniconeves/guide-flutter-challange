import 'package:fl_chart/fl_chart.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
    show:true,
    rightTitles: AxisTitles(
        sideTitles: SideTitles(
            showTitles: false
        )
    ),
    topTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: false
      )
    )
  );
}