import 'package:get/get.dart';

import '../../../_exports.dart';

class ListController extends GetxController with StateMixin<List<LoanEntity>> {
  final _list = <LoanEntity>[].obs;
  final _isLoading = false.obs;
  final _isError = false.obs;
  final _errorMessage = ''.obs;
  final IGetAllLoansUsecase usecase;

  ListController({required this.usecase});

  List<LoanEntity> get list => _list;
  bool get isLoading => _isLoading.value;
  bool get isError => _isError.value;
  String get errorMessage => _errorMessage.value;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  Future<void> loadData() async {
    change([], status: RxStatus.loading());
    var result = await usecase.call();
    result.fold(
      (failure) {
        change([], status: RxStatus.error('erro'));
      },
      (success) {
        _list.value = success;
        change(success, status: RxStatus.success());
      },
    );
  }
}
