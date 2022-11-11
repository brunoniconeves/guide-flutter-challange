import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../data/models/LineTitles.dart';
import '../../../data/models/pricePoint.dart';
import 'dart:math';

class ChartVariacao extends StatelessWidget {
  final dynamic _state;

  ChartVariacao(this._state);

  final List<Color> gradientColors = [
    const Color(0xffeaeaea),
    const Color(0xff02d39a),
  ];

  @override
  Widget build(BuildContext context) {
    List<double> openPrices = [];
    _state.forEach((element) {
      double value = element.openPrice as double;
      openPrices.add(double.parse((value).toStringAsFixed(2)));
    });
    double maxPrice = openPrices.fold(0,max);
    double minPrice = openPrices.reduce((curr, next) => curr < next? curr: next);
    List<PricePoint> _pricePoints = createPricePoints(List.from(openPrices.reversed));
    return AspectRatio(
      aspectRatio: 2,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(
            show: true,
            getDrawingHorizontalLine: (value){
              return FlLine(
                color: Colors.grey,
                strokeWidth: 1
              );
            },
            drawVerticalLine: false,
          ),
          minX: 0,
          maxX: (_pricePoints.length - 1).toDouble(),
          minY: minPrice,
          maxY: double.parse((((maxPrice/5)+1).round()).toStringAsFixed(2))*5 as double,
          lineBarsData: [
            LineChartBarData(
              spots: _pricePoints.map((point) => FlSpot(point.x, point.y)).toList(),
              isCurved: false,
              dotData: FlDotData(show: false),
              barWidth: 5,
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xff23b6e6),
                  Color(0xff02d39a),
                ],
              ),
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: gradientColors.map((color) => color.withOpacity(0.3)).toList(),
                )
              )
            ),
          ],
          borderData: FlBorderData(
            show: false,
          ),
          titlesData: LineTitles.getTitleData(),
        )
      ),
    );
  }
}
