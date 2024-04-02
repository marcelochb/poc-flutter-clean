import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  final Widget Function(BuildContext, int) itemBuilder;

  const ListWidget({super.key, required this.itemBuilder});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [ListView.builder(itemBuilder: itemBuilder)],
    );
  }
}
