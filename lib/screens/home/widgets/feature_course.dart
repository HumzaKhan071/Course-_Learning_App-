import 'package:e_learning_app/models/course.dart';
import 'package:e_learning_app/screens/home/widgets/category_title.dart';
import 'package:e_learning_app/screens/home/widgets/course_item.dart';
import 'package:flutter/material.dart';

class FeatureCourse extends StatelessWidget {
  final coursesList = Course.generateCourses();

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          CategoryTitle(leftText: "Top of the week", rightText: "view all"),
          Container(
            height: 300,
            child: ListView.separated(
              padding: EdgeInsets.all(25),
              itemCount: coursesList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  CourseItem(course: coursesList[index]),
              separatorBuilder: (_, index) => SizedBox(
                width: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
