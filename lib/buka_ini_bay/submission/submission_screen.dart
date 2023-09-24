import 'package:coordinator/buka_ini_bay/submission/submission_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class SubmissionScreen extends GetView<SubmissionController> {
  const SubmissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Submit"),
          onPressed: (){controller.submitData();},
        ),
      ),
    );
  }
}