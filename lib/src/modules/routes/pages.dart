import 'package:get/get.dart';

import '../_exports.dart';

class Pages {
  static final routes = [
    GetPage(
      name: '/list',
      page: () => const ListPage(),
      binding: ListBinding(),
    )
  ];
}
