import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Position.dart';

class position_sepecific extends StatefulWidget {
  const position_sepecific({Key? key}) : super(key: key);

  @override
  State<position_sepecific> createState() => _position_sepecificState();
}

class _position_sepecificState extends State<position_sepecific> with TickerProviderStateMixin{
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TabBar(indicatorColor: Colors.black,
              indicatorWeight: 1,
              controller: tabController,
              tabs: [
                Container(padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                        'Pitchers', style: TextStyle(color: Colors.black))),
                Container(padding: EdgeInsets.symmetric(vertical: 5),
                  child: Icon(Icons.sports_baseball_sharp),)

              ]),
        );


    }
  }
  Widget otherone (){
  return TabBarView(
   controller: TabController,
    children: listViewName(),);
  }