import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../_exports.dart';

class ListPage extends GetView<ListController> {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return controller.obx((state) => Text(state?.first.name ?? ''),
        onEmpty: null,
        onError: (_) => const Text('error'),
        onLoading: const Text('carregando'));
  }
}
