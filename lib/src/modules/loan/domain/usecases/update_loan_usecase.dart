import 'package:either_dart/either.dart';

import '../_exports.dart';

class UpdateLoanUsecase implements IUpdateLoanUsecase {
  final ILoanRepository repository;

  UpdateLoanUsecase(this.repository);

  @override
  Future<Either<Exception, LoanEntity>> call(LoanEntity loan) async {
    return await repository.updateLoan(loan);
  }
}
