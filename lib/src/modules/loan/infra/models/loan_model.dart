import '../../_exports.dart';

class LoanModel extends LoanEntity {
  const LoanModel({
    required super.id,
    required super.name,
    required super.type,
    required super.amount,
  });

  factory LoanModel.fromJson(Map<String, dynamic> json) {
    var result = LoanModel(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      amount: json['amount'] as double,
    );
    return result;
  }

  LoanEntity toEntity() => copyWith();

  static LoanModel fromEntity(LoanEntity entity) => LoanModel(
        id: entity.id,
        name: entity.name,
        type: entity.type,
        amount: entity.amount,
      );

  static List<LoanEntity> toEntityList(List<LoanModel> models) =>
      models.map((model) => model.toEntity()).toList();

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'type': type,
        'amount': amount,
      };

  static List<LoanModel> fromJsonList(List<dynamic> json) {
    var result = json.map((e) => LoanModel.fromJson(e)).toList();
    return result;
  }
}
