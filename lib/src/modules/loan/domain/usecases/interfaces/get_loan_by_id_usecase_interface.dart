import 'package:either_dart/either.dart';

import '../../_exports.dart';

abstract class IGetLoanByIdUsecase {
  Future<Either<Exception, LoanEntity>> call(String id);
}
