import 'package:app/app/modules/grafico_variacao/grafico_variacao_bindings.dart';
import 'package:app/app/modules/home/page.dart';
import 'package:app/app/modules/grafico_variacao/page.dart';
import 'package:get/get.dart';

appRoutes() => [
  GetPage(
    name: '/home',
    page: () => Home(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/graficoVariacao',
    page: () => GraficoVariacao(),
    middlewares: [MyMiddelware()],
    binding: GraficoVariacaoBindings(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: Duration(milliseconds: 500),
  )
];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}