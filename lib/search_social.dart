import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram/search_focus.dart';
import 'package:quiver/iterables.dart';

class Search_social extends StatefulWidget {
  const Search_social({Key? key}) : super(key: key);

  @override
  State<Search_social> createState() => _SearchState();
}

class _SearchState extends State<Search_social> {

 List<List<int>> groupBox = [[],[],[]];
List<int> groupIndex = [0,0,0];
 @override
  void initState() {

    super.initState();
    for(var i =0; i < 100; i++){
   var gi = groupIndex.indexOf(min<int>(groupIndex)!);

     var size = 1;
     if(gi !=1){
       size =Random().nextInt(100)%2 ==0? 1:2;
     }
      groupBox[gi].add(size);
     groupIndex[gi] += size;

    }
      print(groupBox);
  }

  Widget _appbar(){
    return Row(children: [
     Expanded(
      child: GestureDetector(
        onTap: (){
        Get.to(SearchFocus());
        },
        child: Container(
              padding: const EdgeInsets.symmetric(vertical:8 ),
              margin: const EdgeInsets.symmetric(vertical:10, horizontal: 15 ),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: Colors.grey
          ),
          child:  Row(children:const  [
            Icon(Icons.search),Text('검색', style: TextStyle(fontSize: 15, color: Colors.black),)
          ],)
          ),
        ),
      )
    ],);

  }

Widget _body (){
    return SingleChildScrollView(
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:List.generate(groupBox.length, (index) =>
          Expanded(child: Column(
            children: List.generate(groupBox[index].length, (jndex) => Container(
              height: Get.width   *0.33 * groupBox[index][jndex],
              decoration: BoxDecoration( border: Border.all(color: Colors.white),
                  color: Colors.primaries
                  [Random().nextInt(Colors.primaries.length)]),
                child: Image.asset('b.png', fit: BoxFit.cover)

            ),
            ).toList(),
            // children: [
              // Container(height: 160, color: Colors.blue,),
              // Container(height: 160, color: Colors.green,),
              // Container(height: 160, color: Colors.blue,),
              // Container(height: 160, color: Colors.green,)

          ),
          ),
        ).toList(),

      ) ,
    );

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _appbar(),
           Expanded(child: _body()

           )
           // body(),
          ],

        )
      )
    );
  }
}
