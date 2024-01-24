import 'package:either_dart/either.dart';
import 'package:poccrud/src/modules/loan/domain/_exports.dart';

class GetAllLoansUsecase implements IGetAllLoansUsecase {
  final ILoanRepository repository;

  GetAllLoansUsecase({required this.repository});

  @override
  Future<Either<Exception, List<LoanEntity>>> call() async =>
      await repository.getAllLoans();
}
