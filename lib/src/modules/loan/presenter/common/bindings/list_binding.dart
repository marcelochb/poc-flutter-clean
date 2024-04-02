import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../../../../_exports.dart';

class ListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dio>(() => Dio());
    Get.lazyPut<IApiClient>(() => ApiClientDio(client: Get.find()));
    Get.lazyPut<ILoanDatasource>(() => LoanDatasource(apiClient: Get.find()));
    Get.lazyPut<ILoanRepository>(() => LoanRepository(datasource: Get.find()));
    Get.lazyPut<IGetAllLoansUsecase>(
        () => GetAllLoansUsecase(repository: Get.find()));
    Get.lazyPut<ListController>(() => ListController(usecase: Get.find()));
  }
}
