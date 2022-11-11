import 'package:app/app/data/models/companyPrice.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String moneySymbol = "R\$";
var _formatMoney = new NumberFormat.currency(locale: "pt_BR", symbol: moneySymbol);

class CardVariacao extends StatelessWidget {
  final CompanyPrice item;

  CardVariacao(this.item);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.white60,
        elevation: 1,
        margin: const EdgeInsets.only(bottom: 20.0, right: 20, left: 20),
        child: Container(
          height: 100,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                child: Text('${DateFormat('dd/MM/yyyy').format( DateTime.fromMillisecondsSinceEpoch(item.date * 1000))}'),
                top: 10,
                left: 10,
              ),

              Positioned(
                child: Text(
                  'Valor de abertura',
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                ),

                top: 40,
                left: 10,
              ),

              Positioned(
                child: Text('${_formatMoney.format(item.openPrice)}'),
                top: 60,
                left: 10,
              ),

              Positioned(
                child: Text(
                  'Variação D-1',
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                ),

                top: 40,
                left: 160,
              ),

              Positioned(
                child: Text(
                  '${item.d1VariationPercentage}%',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: item.d1VariationPercentage < 0 ? Colors.red : Colors.green
                  ),
                ),

                top: 60,
                left: 160,
              ),

              Positioned(
                child: Text(
                  'Variação Total',
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                ),

                top: 40,
                left: 270,
              ),

              Positioned(
                child: Text(
                  '${item.firstPriceVariationPercentage}%',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: item.firstPriceVariationPercentage < 0 ? Colors.red : Colors.green
                  ),
                ),

                top: 60,
                left: 270,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
