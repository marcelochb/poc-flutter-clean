import 'package:either_dart/either.dart';

import '../_exports.dart';

class CreateLoanUsecase implements ICreateLoanUsecase {
  final ILoanRepository repository;

  CreateLoanUsecase(this.repository);

  @override
  Future<Either<Exception, LoanEntity>> call(LoanEntity loan) async =>
      await repository.createLoan(loan);
}
