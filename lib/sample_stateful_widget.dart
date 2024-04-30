import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/sample_stateless_widget.dart';

class SampleStatefulWidget extends StatefulWidget {

  const SampleStatefulWidget({super.key});

  @override
  State<SampleStatefulWidget> createState() => _SampleStatefulWidget();

}

class _SampleStatefulWidget extends State<SampleStatefulWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Sample Statefulwidget"
        ),
      ),
      body: const SampleStatelessWidget(),
    );
  }

}