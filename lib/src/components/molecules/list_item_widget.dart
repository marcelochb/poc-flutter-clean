import 'package:flutter/material.dart';

import '../atoms/_exports.dart';
import '_exports.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 3,
      child: Column(
        children: [
          BodyListItemWidget(lable: 'Title', value: 'Value'),
          ButtonWidget(),
        ],
      ),
    );
  }
}
