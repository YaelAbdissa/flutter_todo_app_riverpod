import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '/config/config.dart';
import '/data/data.dart';
import '/widgets/widgets.dart';
import '/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  static HomeScreen builder(BuildContext context, GoRouterState state) =>
      const HomeScreen();

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayWhiteText(
                      text: "${returnDate(DateTime.now())} ",
                      fontSize: 21,
                    ),
                    Gap(10),
                    DisplayWhiteText(
                      text: "My To-do List",
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 130,
            left: 0,
            right: 0,
            child: SafeArea(
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    DisplayListOfTasks(
                      tasks: [
                        Task(
                          title: "Task 1",
                          note: "note",
                          date: "Feb 3 ",
                          time: "10:12",
                          category: TaskCategory.work,
                          isCompleted: false,
                        ),
                        Task(
                          title:
                              "Task 2 Task 2Task 2Task 2Task 2Task 2Task 2Task 2Task 2",
                          note: "note",
                          date: "Feb 25",
                          time: "11:26",
                          category: TaskCategory.social,
                          isCompleted: false,
                        ),
                      ],
                    ),
                    Gap(20),
                    Text(
                      "Completed",
                      style: context.textTheme.headlineMedium,
                    ),
                    Gap(20),
                    DisplayListOfTasks(
                      tasks: [
                        Task(
                          title: "Task 2",
                          note: "note",
                          date: "Feb 25",
                          time: "11:26",
                          category: TaskCategory.education,
                          isCompleted: true,
                        ),
                      ],
                      isCompletedTasks: true,
                    ),
                    Gap(20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colors.primary,
                        padding: const EdgeInsets.all(8.00),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        context.push(RouteLocation.addTask);
                      },
                      child: DisplayWhiteText(
                        text: "Add New Task",
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  String returnDate(DateTime date) {
    String month = DateFormat.MMM().format(date);
    String year = date.year.toString();
    String day = date.day.toString();
    return "$month $day, $year";
  }
}
