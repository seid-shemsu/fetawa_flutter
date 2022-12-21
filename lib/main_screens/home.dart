import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

import '../colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    double width = MediaQuery.of(context).size.width - 50;
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  controller: tabController,
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: 12),
                  tabs: [
                    Tab(child: Container(width: width / 2,child: Center(child: Text("Today", style: TextStyle(color: Colors.black),))),),
                    Tab(child: Container(width: width / 2,child: Center(child: Text("Category", style: TextStyle(color: Colors.black),))),),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  Center(child: Text("Today")),
                  Center(child: Text("Category"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
