import 'package:flutter/material.dart';

class DynamicList extends StatefulWidget {
  const DynamicList({super.key});

  @override
  State<DynamicList> createState() => _DynamicListState();
}

class _DynamicListState extends State<DynamicList> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff244D61),
            title: Text(
              'Dynamic List',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  myNum(1),
                  myNum(2),
                  myNum(3),
                  myNum(4),
                  myNum(5),
                  myNum(6),
                  myNum(7),
                  myNum(8),
                  myNum(9),
                  myNum(10),
                ],
              ),
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {},
                child: Text('+',style: TextStyle(fontSize: 30,color: Colors.white),),
                backgroundColor: Color(0xff244D61),
              ),
              SizedBox(width: 20,),
              FloatingActionButton(
                onPressed: () {},
                child: Text('-',style: TextStyle(fontSize: 30,color: Colors.white),),
                backgroundColor: Color(0xff244D61),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget myNum(int number) {
  return Container(
    margin: EdgeInsets.only(top: 7, right: 15, left: 15),
    height: 120,
    width: double.infinity,
    decoration: BoxDecoration(
      color: (number%2==0) ? Color(0xff5689C0) : Color(0xff75E2FF),
      borderRadius: BorderRadius.circular(10),
    ),
    alignment: Alignment.center,
    child: Text(
      '$number',
      style: TextStyle(
          color: Colors.white,
          fontSize: 50
      ),
    ),
  );
}
