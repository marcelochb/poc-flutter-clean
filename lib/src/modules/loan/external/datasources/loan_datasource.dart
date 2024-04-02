import '../../../../core/_exports.dart';
import '../../_exports.dart';

class LoanDatasource implements ILoanDatasource {
  final IApiClient apiClient;

  LoanDatasource({required this.apiClient});

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
      var list = response.data as List;
      var result = LoanModel.fromJsonList(list);
      return result;
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
