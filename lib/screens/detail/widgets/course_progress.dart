import 'package:e_learning_app/constants/colors.dart';
import 'package:e_learning_app/models/module.dart';
import 'package:flutter/material.dart';

import 'course_module.dart';

class CourseProgress extends StatelessWidget {
   final moduleList = Module.generateModules();
CourseProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "The Progress",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20, color: kFont),
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/icons/grid.png",
                    width: 25,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    "assets/icons/list.png",
                    width: 25,
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 20,),

          ...moduleList.map((e) => CourseModule(module: e)).toList()
         
        ],
      ),
    );
  }
}
