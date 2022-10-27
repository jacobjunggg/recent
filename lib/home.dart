import 'dart:html';

import 'package:flutter/material.dart';

class  profile extends StatefulWidget {
  const profile ({Key? key, required Text child}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }
  Widget Face_Profile () {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 50),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('cc.jpg'),
              ),
            ),
            Container(padding: EdgeInsets.only(top: 15), child: Text('조이현',
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.blue)),


            ),

          ],
        ),
      ),
    );

  }
Widget Profile_Percentage (){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
      child: Row(
        children: [
          Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: Text('Profile %', textAlign: TextAlign.center ,  style: TextStyle( color: Colors.black, fontSize: 13,fontWeight: FontWeight.bold),)
                , decoration:BoxDecoration(borderRadius: BorderRadius.circular(3), border: Border.all(color:Colors.black)),

              )
          ),
  Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(3), border: Border.all(color:Colors.black),
      color: Colors.grey,) ,
      child: ElevatedButton(onPressed: (){}, child: Text('EDIT', ), ),
  )
        ],

      ),
    );
}

Widget Followers (String title, int value){
    return Column(
        children:[
      Text(
        value.toString(),
        style: const TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold,)
      ),
       Text(
         title,
         style: const TextStyle(fontSize: 11, color: Colors.black),
       )
    ]);
}

Widget Tab_Menu (){

    return TabBar(indicatorColor: Colors.black,indicatorWeight: 1, controller : tabController,tabs: [Container( padding: EdgeInsets.symmetric(vertical: 5),child: Icon(Icons.access_alarm, color: Colors.black,)),
      Container( padding: EdgeInsets.symmetric(vertical: 5), child: Icon(Icons.access_alarm, color: Colors.black,)),

    ] );
}
Widget Tab_View (){
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              children: [
                Face_Profile(),
                Profile_Percentage(),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Followers('Videos', 0), Followers('Following', 0), Followers('Followers', 0), Followers('Views', 0)],   ),
                const SizedBox(height: 20,),
                Tab_Menu(),
                Tab_View(),
              ],
            ))


    );
  }



  }

