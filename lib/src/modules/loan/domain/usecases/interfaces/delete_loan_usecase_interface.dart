import 'package:either_dart/either.dart';

abstract class IDeleteLoanUsecase {
  Future<Either<Exception, void>> call(String id);
}
