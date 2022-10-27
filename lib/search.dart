import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram/search_focus.dart';
import 'package:quiver/iterables.dart';
class search_main extends StatefulWidget {
  const search_main({Key? key}) : super(key: key);

  @override
  State<search_main> createState() => _search_mainState();
}

class _search_mainState extends State<search_main> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  Widget Tab_Menu() {
    return TabBar(indicatorColor: Colors.black,
        indicatorWeight: 1,
        controller: tabController,
        tabs: [
          Container(padding: EdgeInsets.symmetric(vertical: 5),
              child: Text('By Position', style: TextStyle(color: Colors.black))),
          Container(padding: EdgeInsets.symmetric(vertical: 5),
              child: Text('By Team',style: TextStyle(color: Colors.black)))

        ]);
  }


  Widget _appbar() {
    return Row(children: [
      Expanded(
        child: GestureDetector(
          onTap: () {
            Get.to(SearchFocus());
          },
          child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6), color: Colors.white
              ),
              child: Row(children: const [
                Icon(Icons.search, color: Colors.black,),
                Text(':  //search by player, school...', style: TextStyle(fontSize: 15, color: Colors.black),)
              ],)
          ),
        ),
      )
    ],);
  }
 Widget Body(){
    return Container(

      child: TabBarView(controller: tabController,
        children: [
           Container(child: Text('sj'),),
            Container(child: Text('sf'),)
          ],
     ),
    );

 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:_appbar(),
          bottom: PreferredSize( preferredSize: Size.fromHeight(50), child: Container(child: Tab_Menu(), )),
        ),
        body: Body()

            );
  }
}