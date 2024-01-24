import 'package:poccrud/src/modules/loan/infra/datasources/loan_datasource_interface.dart';
import 'package:poccrud/src/modules/loan/infra/models/loan_model.dart';

import '../../../../core/_exports.dart';

class LoanDataSource implements ILoanDatasource {
  final IApiClient apiClient;

  LoanDataSource({required this.apiClient});

  @override
  Future<LoanModel> createLoan(LoanModel loan) async {
    try {
      var response = await apiClient.post('loan', body: loan.toJson());
      return LoanModel.fromJson(response);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  @override
  Future<LoanModel> deleteLoan(String id) {
    // TODO: implement deleteLoan
    throw UnimplementedError();
  }

  @override
  Future<LoanModel> getLoan(String id) {
    // TODO: implement getLoan
    throw UnimplementedError();
  }

  @override
  Future<List<LoanModel>> getLoans() async {
    try {
      var response = await apiClient.get('loan');
      return LoanModel.fromJsonList(response['data'].tolist());
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  @override
  Future<LoanModel> updateLoan(LoanModel loan) {
    // TODO: implement updateLoan
    throw UnimplementedError();
  }
}
