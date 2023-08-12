import 'package:flutter/material.dart';

import '../Helper/Appbar.dart';
import '../Helper/AppBtn.dart';
import '../Helper/Colors.dart';


class BreedScreen extends StatefulWidget {
  const BreedScreen({Key? key}) : super(key: key);

  @override
  State<BreedScreen> createState() => _BreedScreenState();
}

class _BreedScreenState extends State<BreedScreen> {

  List<Map<String, dynamic>> BreedList = [
    {"image_path": 'assets/images/1.png', 'title': 'Osmanabadi','type': 'Goat'},
    {"image_path": 'assets/images/2.png', 'title': 'Sirohi','type': 'Goat'},
    {"image_path": 'assets/images/3.png', 'title': 'Osmanabadi','type': 'Goat'},
    {"image_path": 'assets/images/4.png', 'title': 'Sirohi','type': 'Goat'},
    {"image_path": 'assets/images/5.png', 'title': 'Rajasthani','type': 'Sheep'},
    {"image_path": 'assets/images/6.png', 'title': 'Cow','type': 'Jarshi'},
    {"image_path": 'assets/images/7.png', 'title': 'Rajasthani','type': 'Sheep'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context, text:"Breed", isTrue: true, ),

      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*1.16,
              margin: EdgeInsets.all(10),
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent:225,
                  crossAxisCount: 2, // number of items in each row
                  mainAxisSpacing: 10.0, // spacing between rows
                  crossAxisSpacing: 8.0, // spacing between columns
                ),
                padding: EdgeInsets.all(8.0), // padding around the grid
                itemCount:BreedList.length, // total number of items
                itemBuilder: (context, index) {
                  return Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(BreedList[index]["image_path"],
                                  fit: BoxFit.contain,
                                ),
                              ),

                            ),
                             SizedBox(height: 3,),
                            Text(BreedList[index]["title"],style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),),

                            SizedBox(height: 3,),
                            Text(BreedList[index]["type"],style: TextStyle(
                                color:colors.black12.withOpacity(0.5)
                            ),),

                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Btn(
              title:"Add",
              height: MediaQuery.of(context).size.width/8,
              width:MediaQuery.of(context).size.width/1.2 ,
            ),
            SizedBox(height: 15,),
          ],
        ),
      ),
     
    );
  }
}
