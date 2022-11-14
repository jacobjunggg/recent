

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchFocus extends StatefulWidget {
  const SearchFocus({Key? key}) : super(key: key);

  @override
  State<SearchFocus> createState() => _SearchFocusState();
}

class _SearchFocusState extends State<SearchFocus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: Get.back,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.back_hand),
          ),

        ),
        title: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
          child: const TextField(
          decoration: InputDecoration(border: InputBorder.none, hintText: 'search') ,),
        ),
      bottom: PreferredSize(child: Container(
          width: Size.infinite.width,
        child: Text('fasfasfasf'),
        color: Colors.red,),
        preferredSize: Size.fromHeight(50),),
      ),
      body: SafeArea(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
