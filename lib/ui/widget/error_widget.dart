import 'package:flutter/material.dart';

class FailedWidget extends StatelessWidget {
  const FailedWidget({required this.error, super.key, required this.tryAgain});
  final String error;
  final Function() tryAgain;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(error),
        FilledButton(
          onPressed: tryAgain,
          child: const Text('Try Again'),
        ),
      ],
    );
  }
}
