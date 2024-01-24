import 'package:either_dart/either.dart';
import 'package:poccrud/src/modules/loan/domain/_exports.dart';

class GetLoanByIdUsecase implements IGetLoanByIdUsecase {
  final ILoanRepository repository;

  GetLoanByIdUsecase(this.repository);

  @override
  Future<Either<Exception, LoanEntity>> call(String id) async =>
      await repository.getLoanById(id);
}
