import 'package:flutter/material.dart';

class MyWatchListScreen extends StatefulWidget {
  const MyWatchListScreen({super.key});

  @override
  State<MyWatchListScreen> createState() => _MyWatchListScreenState();
}

class _MyWatchListScreenState extends State<MyWatchListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  Widget body(){
    return listView();
  }

  Widget listView(){
    return Container(
      child: ListView.separated(itemBuilder: (context,index){
        return listItem();
      }, separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 10
        );
      }, itemCount: 1),
    );
  }

  Widget listItem(){
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF))
                ),
                child: Text('B-195',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
              )
            ],
          )
        ],
      ),
    );
  }
}
