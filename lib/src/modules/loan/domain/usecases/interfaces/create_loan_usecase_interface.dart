import 'package:either_dart/either.dart';

import '../../_exports.dart';

abstract class ICreateLoanUsecase {
  Future<Either<Exception, LoanEntity>> call(LoanEntity loan);
}
