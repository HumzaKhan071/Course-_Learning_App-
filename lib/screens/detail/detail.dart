import 'package:e_learning_app/models/course.dart';
import 'package:e_learning_app/models/module.dart';
import 'package:e_learning_app/screens/detail/widgets/course_desc.dart';
import 'package:e_learning_app/screens/detail/widgets/course_progress.dart';
import 'package:e_learning_app/screens/detail/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
 
  final Course course;
DetailPage({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAppBar(
              course: course,
            ),
            CourseDescription(
              course: course,
            ),
            CourseProgress(),
          ],
        ),
      ),
    );
  }
}
