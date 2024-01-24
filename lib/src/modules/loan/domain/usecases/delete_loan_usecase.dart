import 'package:either_dart/either.dart';

import '../_exports.dart';

class DeleteLoanUsecase implements IDeleteLoanUsecase {
  final ILoanRepository repository;

  DeleteLoanUsecase(this.repository);

  @override
  Future<Either<Exception, void>> call(String id) async =>
      await repository.deleteLoan(id);
}
