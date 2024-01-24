import 'package:either_dart/either.dart';

import '../_exports.dart';

abstract class ILoanRepository {
  Future<Either<Exception, LoanEntity>> createLoan(LoanEntity loan);
  Future<Either<Exception, LoanEntity>> updateLoan(LoanEntity loan);
  Future<Either<Exception, void>> deleteLoan(String id);
  Future<Either<Exception, List<LoanEntity>>> getAllLoans();
  Future<Either<Exception, LoanEntity>> getLoanById(String id);
}
