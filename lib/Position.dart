import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Byposition extends StatefulWidget {
  const Byposition({Key? key}) : super(key: key);

  @override
  State<Byposition> createState() => _BypositionState();
}

class _BypositionState extends State<Byposition>with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.close),
          ),
          title:_appbar_Byposition(),
          bottom: PreferredSize( preferredSize: Size.fromHeight(50), child: Container(child: Tab_Menu_Byposition(), )),
        ),
        body: Body_Byposition()
    );;
  }

  Widget _appbar_Byposition() {
    return Row(children: [
      Expanded(
        child: GestureDetector(
          onTap: () {

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

  Widget Body_Byposition(){
    return Container(

      child: TabBarView(controller: tabController,
        children: [
         listViewName(),
          Container(child: Grid_Position(),)
        ],
      ),
    );

  }
  Widget Tab_Menu_Byposition() {
    return TabBar(indicatorColor: Colors.black,
        indicatorWeight: 1,
        controller: tabController,
        tabs: [
          Container(padding: EdgeInsets.symmetric(vertical: 5),
              child: Text('Pitchers', style: TextStyle(color: Colors.black))),
          Container(padding: EdgeInsets.symmetric(vertical: 5),
              child: Icon(Icons.sports_baseball_sharp),)

        ]);
  }
Widget Grid_Position(){
  return GridView.builder(
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: 15,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 1, mainAxisSpacing:1, crossAxisSpacing: 1, ),
    itemBuilder: (BuildContext context, int index ){
      return Container(color: Colors.grey,);
    },
  );
}
}
Widget listViewName (){
  return ListView.builder(
      itemCount: 15,
      itemBuilder: (c,i){
        return Padding(
          padding: const EdgeInsets.all(8.0),

          child: ListTile(
            leading: Image.asset('v.png'),
            title: TextButton(
              onPressed: (){},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(i.toString()),
                  Text('. Jaob'),
                  Text('height'),
                  Text('weight'),
                  Text('avg velo'),
                ],
              ),
            ),
            trailing:
            TextButton(onPressed:(){}, child: Text('School n raking'),),


          ),

        );
      });
}