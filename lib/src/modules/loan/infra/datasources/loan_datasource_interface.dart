import '../_exports.dart';

abstract class ILoanDatasource {
  Future<LoanModel> getLoan(String id);
  Future<List<LoanModel>> getLoans();
  Future<LoanModel> createLoan(LoanModel loan);
  Future<LoanModel> updateLoan(LoanModel loan);
  Future<LoanModel> deleteLoan(String id);
}
