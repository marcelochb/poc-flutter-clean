import 'package:equatable/equatable.dart';

class LoanEntity extends Equatable {
  final String id;
  final String name;
  final String type;
  final double amount;

  const LoanEntity({
    required this.id,
    required this.name,
    required this.type,
    required this.amount,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        type,
        amount,
      ];

  LoanEntity copyWith({
    String? id,
    String? name,
    String? type,
    double? amount,
  }) {
    return LoanEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      amount: amount ?? this.amount,
    );
  }
}
