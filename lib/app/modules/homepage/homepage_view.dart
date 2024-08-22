import 'package:agendabarber/app/modules/homepage/homepage_controller.dart';
import 'package:agendabarber/app/modules/homepage/widgets/body_home_widget.dart';
import 'package:agendabarber/app/modules/homepage/widgets/header_home_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomepageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: const Column(
        children: [
          HomeHeaderWidget(),
          BodyHomeWidget(),
        ],
      ),
    );
  }
}
