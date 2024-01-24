import 'package:either_dart/either.dart';

import '../../_exports.dart';
import '../_exports.dart';

class LoanRepository implements ILoanRepository {
  final ILoanDatasource datasource;

  LoanRepository({required this.datasource});

  @override
  Future<Either<Exception, LoanEntity>> createLoan(LoanEntity loan) async {
    try {
      var response = await datasource.createLoan(LoanModel.fromEntity(loan));
      return Right(response.toEntity());
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }

  @override
  Future<Either<Exception, void>> deleteLoan(String id) async {
    try {
      await datasource.deleteLoan(id);
      return const Right(null);
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }

  @override
  Future<Either<Exception, List<LoanEntity>>> getAllLoans() async {
    try {
      var response = await datasource.getLoans();
      return Right(LoanModel.toEntityList(response));
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }

  @override
  Future<Either<Exception, LoanEntity>> getLoanById(String id) async {
    try {
      var response = await datasource.getLoan(id);
      return Right(response.toEntity());
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }

  @override
  Future<Either<Exception, LoanEntity>> updateLoan(LoanEntity loan) async {
    try {
      var response = await datasource.updateLoan(LoanModel.fromEntity(loan));
      return Right(response.toEntity());
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}
