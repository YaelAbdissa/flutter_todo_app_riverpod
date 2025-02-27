import 'package:flutter/material.dart';

import '/screen/screens.dart';
import 'package:go_router/go_router.dart';

import '../config.dart';

final navigationKey = GlobalKey<NavigatorState>();

final appRoutes = [
  GoRoute(
    name: 'home',
    path: RouteLocation.home,
    builder: HomeScreen.builder,
    parentNavigatorKey: navigationKey,
  ),
  GoRoute(
    name: 'addTask',
    path: RouteLocation.addTask,
    builder: AddTaskScreen.builder,
    parentNavigatorKey: navigationKey,
  ),
];
