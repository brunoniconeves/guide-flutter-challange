import 'package:app/app/data/repositories/i_company_repository.dart';
import 'package:get/get.dart';

class GraficoVariacaoController extends GetxController with StateMixin {
  final ICompanyRepository _companyRepository;

  GraficoVariacaoController(this._companyRepository);

  String symbol = 'PETR4';

  @override
  onInit(){
    super.onInit();
    String _symbol = '';
    if(Get.parameters['codigoAtivo'] != null) {
      _symbol = Get.parameters['codigoAtivo'].toString();
    }
    getCompanyInfo(_symbol);
    getCompanyPriceHistory(_symbol);
  }

  Future<void> getCompanyInfo(String symbol) async {
    change([], status: RxStatus.loading());
    try{
      final data = await _companyRepository.getCompanyInfo(symbol);
      change(data, status: RxStatus.success());
    } catch (e){
      print(e);
      change([], status: RxStatus.error('Erro ao buscar dados da empresa'));
    }
  }

  Future<void> getCompanyPriceHistory(String symbol) async {
    change([], status: RxStatus.loading());
    try{
      final data = await _companyRepository.getCompanyPriceHistory(symbol);
      change(data, status: RxStatus.success());
    } catch (e){
      print(e);
      change([], status: RxStatus.error('Erro ao buscar dados da empresa'));
    }
  }
}