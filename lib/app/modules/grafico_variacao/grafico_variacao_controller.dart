import 'package:app/app/data/repositories/i_company_repository.dart';
import 'package:get/get.dart';

class GraficoVariacaoController extends GetxController with StateMixin {
  static GraficoVariacaoController get to => Get.find();

  final ICompanyRepository _companyRepository;

  GraficoVariacaoController(this._companyRepository);
  String? symbol = Get.parameters['codigoAtivo'];
  String companyLogo = "";

  void changeSymbol(String _symbol){
    symbol = _symbol;
    update();
  }

  void changeCompanyLogo(String _companyLogo){
    companyLogo = _companyLogo;
    update();
  }


  @override
  onInit(){
    super.onInit();
    getCompanyPriceHistory();
  }

  @override
  dispose(){
    symbol = "";
  }

  @override
  didChange(){
    String _symbol = '';
    if(Get.parameters['codigoAtivo'] != null) {
      _symbol = Get.parameters['codigoAtivo'].toString();
    }
    //getCompanyInfo(_symbol);
    getCompanyPriceHistory();
  }

  /*Future<void> getCompanyInfo(String symbol) async {
    change([], status: RxStatus.loading());
    try{
      final data = await _companyRepository.getCompanyInfo(symbol);
      change(data, status: RxStatus.success());
    } catch (e){
      print(e);
      change([], status: RxStatus.error('Erro ao buscar dados da empresa'));
    }
  }*/

  Future<void> getCompanyPriceHistory() async {
    change([], status: RxStatus.loading());
    try{
      final data = await _companyRepository.getCompanyPriceHistory(symbol.toString());
      changeCompanyLogo(data.first.companyLogo);
      change(data, status: RxStatus.success());
    } catch (e){
      print(e);
      change([], status: RxStatus.error('Erro ao buscar dados da empresa'));
    }
  }
}