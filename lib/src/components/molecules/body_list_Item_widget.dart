import 'package:flutter/material.dart';
import 'package:poccrud/src/components/atoms/text_widget.dart';

class BodyListItemWidget extends StatelessWidget {
  final String lable;
  final String value;

  const BodyListItemWidget(
      {super.key, required this.lable, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(text: lable),
              TextWidget(text: value),
            ],
          ),
        )
      ],
    );
  }
}
