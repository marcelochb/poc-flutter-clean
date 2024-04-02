import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/_exports.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/list',
    getPages: Pages.routes,
  ));
}
