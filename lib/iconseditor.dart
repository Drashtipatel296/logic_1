import 'package:flutter/material.dart';

class IconsEditor extends StatefulWidget {
  const IconsEditor({super.key});

  @override
  State<IconsEditor> createState() => _IconsEditorState();
}

class _IconsEditorState extends State<IconsEditor> {

  int selectedColor = 0;
  int selectedIcon = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor:  Colors.white,
          appBar: AppBar(
            elevation: 5,
            shadowColor: Colors.black,
            title: const Text(
              'Icons Editor',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    height: 300,
                    width: 380,
                    decoration: BoxDecoration(
                      color: const Color(0xffFAFAFA),
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 5,
                          color: Colors.grey.shade300,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 90,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 0,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 3,left: 15),
                    height: 70,
                    width: 380,
                    decoration: BoxDecoration(
                      color: const Color(0xffFAFAFA),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 5,
                          color: Colors.grey.shade300,
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Select Color',
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff616161),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20,left: 15),
                    height: 100,
                    width: 380,
                    decoration: BoxDecoration(
                      color: const Color(0xffFAFAFA),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 5,
                          color: Colors.grey.shade300,
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.only(left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedColor == 1;
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                color: Color(0xffCBCBCB),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                color: Color(0xffD8CCE1),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.yellowAccent,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: const Color(0xff2196F3),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: const Color(0xff3F51B5),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                color: Color(0xffD8CCE1),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                color: Color(0xffCBCBCB),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 15,left: 15),
                    height: 70,
                    width: 380,
                    decoration: BoxDecoration(
                      color: const Color(0xffFAFAFA),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 5,
                          color: Colors.grey.shade300,
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Select Icon',
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff616161),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20,left: 15),
                    height: 100,
                    width: 380,
                    decoration: BoxDecoration(
                      color: const Color(0xffFAFAFA),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 5,
                          color: Colors.grey.shade300,
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.only(left: 12),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedIcon == 1;
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                    color: Colors.grey.shade300,
                                  ),
                                ],
                              ),
                              child: const Icon(Icons.add,size: 40,color: Colors.blueAccent,),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                    color: Colors.grey.shade300,
                                  ),
                                ],
                              ),
                                child: const Icon(Icons.album,size: 40,color: Colors.blueAccent,)
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                    color: Colors.grey.shade300,
                                  ),
                                ],
                              ),
                                child: const Icon(Icons.arrow_back_ios_new,size: 40,color: Colors.blueAccent,)
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                    color: Colors.grey.shade300,
                                  ),
                                ],
                              ),
                                child: const Icon(Icons.arrow_forward_ios,size: 40,color: Colors.blueAccent,)
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                    color: Colors.grey.shade300,
                                  ),
                                ],
                              ),
                                child: const Icon(Icons.alarm,size: 40,color: Colors.blueAccent,)
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                    color: Colors.grey.shade300,
                                  ),
                                ],
                              ),
                                child: const Icon(Icons.phone_rounded,size: 40,color: Colors.blueAccent,)
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                    color: Colors.grey.shade300,
                                  ),
                                ],
                              ),
                                child: const Icon(Icons.search,size: 40,color: Colors.blueAccent,)
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
