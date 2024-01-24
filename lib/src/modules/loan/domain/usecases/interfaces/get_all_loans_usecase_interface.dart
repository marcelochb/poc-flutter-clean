import 'package:either_dart/either.dart';

import '../../_exports.dart';

abstract class IGetAllLoansUsecase {
  Future<Either<Exception, List<LoanEntity>>> call();
}
