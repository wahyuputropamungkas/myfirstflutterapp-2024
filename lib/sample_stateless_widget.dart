import 'package:flutter/material.dart';

class SampleStatelessWidget extends StatelessWidget {
  const SampleStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text(
        "Body Stateless Widget"
      ),
    );
  }

}