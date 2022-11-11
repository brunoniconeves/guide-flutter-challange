import 'package:collection/collection.dart';

class PricePoint {
  final double x;
  final double y;
  PricePoint({required this.x, required this.y});
}

List<PricePoint> createPricePoints(List<double> prices)  {
  return prices
      .mapIndexed(
        ((index, element) => PricePoint(x: index.toDouble(), y: element))
      ).toList();
}