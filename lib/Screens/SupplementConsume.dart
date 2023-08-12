import 'package:flutter/material.dart';

import '../Helper/AppBtn.dart';
import '../Helper/Appbar.dart';
import '../Helper/Colors.dart';

class SupplementConsume extends StatefulWidget {
  const SupplementConsume({Key? key}) : super(key: key);

  @override
  State<SupplementConsume> createState() => _SupplementConsumeState();
}

class _SupplementConsumeState extends State<SupplementConsume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.grad1Color,
      appBar:customAppBar(context: context, text:"Supplement Consume", isTrue: true, ),
      body:Container(
        padding: EdgeInsets.all(15),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Categories',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                            width: MediaQuery.of(context).size.width/2.3,
                            color: Colors.white,
                            child:TextFormField(
                              // maxLines: 4,
                              cursorHeight: 25,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 15),
                                  border:InputBorder.none,
                                  hintText: "Goat",
                                  hintStyle: TextStyle(
                                      fontSize: 12,
                                      color: colors.blackTemp
                                  )
                              ),
                            )
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Supplement Name',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                            width: MediaQuery.of(context).size.width/2.3,
                            color: Colors.white,
                            child:TextFormField(
                              // maxLines: 4,
                              cursorHeight: 25,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 15),
                                  border:InputBorder.none,
                                  hintText: "Bharda",
                                  hintStyle: TextStyle(
                                      fontSize: 12,
                                      color: colors.blackTemp
                                  )
                              ),
                            )
                        )
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Supplement Type',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                            width: MediaQuery.of(context).size.width/2.3,
                            color: Colors.white,
                            child:TextFormField(
                              // maxLines: 4,
                              cursorHeight: 25,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 15),
                                  border:InputBorder.none,
                                  hintText: "Kids",
                                  hintStyle: TextStyle(
                                      fontSize: 12,
                                      color: colors.blackTemp
                                  )
                              ),
                            )
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Available Stock',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                            width: MediaQuery.of(context).size.width/2.3,
                            color: Colors.white,
                            child:TextFormField(
                              // maxLines: 4,
                              cursorHeight: 25,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 15),
                                  border:InputBorder.none,
                                  hintText: "35 kg",
                                  hintStyle: TextStyle(
                                      fontSize: 12,
                                      color: colors.blackTemp
                                  )
                              ),
                            )
                        )
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Categories',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                            width: MediaQuery.of(context).size.width/2.3,
                            color: Colors.white,
                            child:TextFormField(
                              // maxLines: 4,

                              cursorHeight: 25,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 15),
                                  border:InputBorder.none,
                                  hintText: "Sheep",
                                  hintStyle: TextStyle(
                                      fontSize: 12,
                                      color: colors.blackTemp
                                  )
                              ),
                            )
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Supplement Name',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                            width: MediaQuery.of(context).size.width/2.3,
                            color: Colors.white,
                            child:TextFormField(
                              // maxLines: 4,

                              cursorHeight: 25,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 15),
                                  border:InputBorder.none,
                                  hintText: "Mix Bharda",
                                  hintStyle: TextStyle(
                                      fontSize: 12,
                                      color: colors.blackTemp
                                  )
                              ),
                            )
                        )
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Supplement Type',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                            width: MediaQuery.of(context).size.width/2.3,
                            color: Colors.white,
                            child:TextFormField(
                              // maxLines: 4,
                              cursorHeight: 25,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 15),
                                  border:InputBorder.none,
                                  hintText: "Pregnant",
                                  hintStyle: TextStyle(
                                      fontSize: 12,
                                      color: colors.blackTemp
                                  )
                              ),
                            )
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Available',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(height: 8,),
                        Container(
                            width: MediaQuery.of(context).size.width/2.3,
                            color: Colors.white,
                            child:TextFormField(
                              // maxLines: 4,

                              cursorHeight: 25,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 15),
                                  border:InputBorder.none,
                                  hintText: "58 kg",
                                  hintStyle: TextStyle(
                                      fontSize: 12,
                                      color: colors.blackTemp
                                  )
                              ),
                            )
                        )
                      ],
                    ),

                  ],
                ),
              ],
            ),
            Btn(
              title:"Add",
              height: MediaQuery.of(context).size.width/8,
              width:MediaQuery.of(context).size.width/1.2 ,
            ),
          ],
        ) ,
      ) ,
    );
  }
}
