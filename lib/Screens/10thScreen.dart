import 'dart:io';
import 'package:intl/intl.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



import '../Helper/AppBtn.dart';
import '../Helper/Colors.dart';
import '../Helper/customText.dart';
import '../Helper/custom_textFormField.dart';
import '../helper/appbar.dart';

class DetailsFromScreen extends StatefulWidget {
  const DetailsFromScreen({Key? key}) : super(key: key);

  @override
  State<DetailsFromScreen> createState() => _DetailsFromScreenState();
}

class _DetailsFromScreenState extends State<DetailsFromScreen> {

  String _btn='Breeder';
  String _btn2='yes';
  int weight=35;
  int sale=450;
  int breederIndex=1;
  int kurbaniIndex=0;
  int cuttingIndex=0;
  int yesIndex=1;
  int noIndex=0;
  String? userType;
  String? breed;
  String?gender;
  String? born;
  TextEditingController brithDateCtr = TextEditingController();
  String? selectedBirthDate;
  TextEditingController purchaseDateCtr = TextEditingController();
  String? selectedPurchaseDate;
  File? image;
  File? selectedImage;

  Future<void> _showImageSourceDialog(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Choose Image Source'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                pickImage(ImageSource.gallery);
              },
              child: Text('Gallery'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                pickImage(ImageSource.camera);
              },
              child: Text('Camera'),
            ),
          ],
        );
      },
    );
  }
  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(
      source: source,
      imageQuality: 50, // You can adjust the image quality here
    );

    if (pickedFile != null) {
      setState(() {
        selectedImage = File(pickedFile.path) ;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: getAppbar(context: context, text:"Goat ", isTrue: true, ),
      backgroundColor:colors.grad1Color,
      body: SingleChildScrollView(
        child:Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Row(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Custom_Text(text: 'Categories'),
                        SizedBox(height: 8,),
                        Container(
                          width: MediaQuery.of(context).size.width/2.3,
                          color: Colors.white,
                          child: DropdownButton2<String>(
                            isExpanded: true,
                            value:userType,
                            //elevation: 5,
                            style: TextStyle(color: Colors.black87),

                            items: <String>[
                              'Cows',
                              'Chickens',
                              'Pigs',
                              'Goat',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),

                            hint: Text(
                              "Select Category",
                            ),
                            onChanged: (String? value)  {
                              setState(() {
                                userType = value!;
                              });
                            },

                            underline: Container(  // Use a container with zero height to remove the underline
                              height: 0,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Custom_Text(text: 'Breed'),
                      SizedBox(height: 8,),
                      Container(
                        width: MediaQuery.of(context).size.width/2.3,
                        color: Colors.white,
                        child: DropdownButton2<String>(
                          isExpanded: true,
                          value:breed,
                          //elevation: 5,
                          style: TextStyle(color: Colors.black87),

                          items: <String>[
                            'Holstein',
                            'sahiwal',
                            'hariana',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),

                          hint: Text(
                            "Select Breed",
                          ),
                          onChanged: (String? value)  {
                            setState(() {
                              breed = value!;
                            });
                          },

                          underline: Container(  // Use a container with zero height to remove the underline
                            height: 0,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),

              SizedBox(height: 15,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Custom_Text(text: 'Tag ID*'),
                      SizedBox(height: 8,),
                      Container(
                        width: MediaQuery.of(context).size.width/2.3,
                          color: Colors.white,
                          child:TextFormField(
                            decoration: InputDecoration(
                                hintText: "Scan/enter",
                                suffixIcon: Icon(Icons.document_scanner_outlined)
                            ),
                          )
                      )
                    ],
                  ),
                  SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Custom_Text(text: 'Gender'),
                      SizedBox(height: 8,),
                      Container(
                        width: MediaQuery.of(context).size.width/2.3,
                        color: Colors.white,
                        child: DropdownButton2<String>(
                          isExpanded: true,
                          value:gender,
                          //elevation: 5,
                          style: TextStyle(color: Colors.black87),

                          items: <String>[
                            'Male',
                            'Female',
                            'Other'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),

                          hint: Text(
                            "Gender",
                          ),
                          onChanged: (String? value)  {
                            setState(() {
                              gender = value!;
                            });
                          },

                          underline: Container(  // Use a container with zero height to remove the underline
                            height: 0,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Custom_Text(text: 'Gender'),
                  SizedBox(height: 8,),
                  Container(
                    // width: MediaQuery.of(context).size.width/2.3,
                    color: Colors.white,
                    child: DropdownButton2<String>(
                      isExpanded: true,
                      value:born,
                      //elevation: 5,
                      style: TextStyle(color: Colors.black87),

                      items: <String>[
                        'Born at Farm',
                        'Born another place'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),

                      hint: Text(
                        "Where Born",
                      ),
                      onChanged: (String? value)  {
                        setState(() {
                          born = value!;
                        });
                      },

                      underline: Container(  // Use a container with zero height to remove the underline
                        height: 0,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Custom_Text(text: 'Birth Date'),
                      SizedBox(height: 8,),
                      GestureDetector(
                        onTap: () async {
                          DateTime? datePicked = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2024));
                          if (datePicked != null) {
                            print(
                            'Date Selected:${datePicked.day}-${datePicked.month}-${datePicked.year}');
                            String formettedDate =
                            DateFormat('dd-MM-yyyy').format(datePicked);
                              setState(() {
                                 selectedBirthDate = formettedDate;
                              });
                            }
                          },
                        child: Container(
                        width: MediaQuery.of(context).size.width/2.3,
                        color: Colors.white,
                        child:  TextFormField(
                          onTap:
                              () async{
                            DateTime? datePicked = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2024));
                            if (datePicked != null) {
                              print(
                                  'Date Selected:${datePicked.day}-${datePicked.month}-${datePicked.year}');
                              String formettedDate =
                              DateFormat('dd-MM-yyyy').format(datePicked);
                              setState(() {
                                selectedBirthDate = formettedDate;
                                brithDateCtr.text = formettedDate;
                              });
                            }
                          },
                          controller: brithDateCtr,
                          decoration: InputDecoration(
                              border:InputBorder.none,
                              contentPadding: EdgeInsets.all(10),
                              hintText: 'dd-mm-yyyy',
                              // border: OutlineInputBorder(
                              //     borderRadius: BorderRadius.circular(10)),
                          ),
                          validator: (value){
                            if(value==null||value.isEmpty)
                              return "Please Enter Date and time";
                            return null;
                          },
                        ),
                      )
                      ),
                    ],
                  ),
                  SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Custom_Text(text: 'Birth Weight'),
                      SizedBox(height: 8,),
                      Container(
                        width: MediaQuery.of(context).size.width/2.3,
                        color: Colors.white,
                        child: CustomTextFormField(hintText: '',),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Custom_Text(text: 'Mother ID'),
                      SizedBox(height: 8,),
                      Container(
                        width: MediaQuery.of(context).size.width/2.3,
                        color: Colors.white,
                        child: CustomTextFormField(hintText: '',),
                      )
                    ],
                  ),
                  SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Custom_Text(text: 'Father ID'),
                      SizedBox(height: 8,),
                      Container(
                        width: MediaQuery.of(context).size.width/2.3,
                        color: Colors.white,
                        child: CustomTextFormField(hintText: '',),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Custom_Text(text: 'Purchase Date'),
                      SizedBox(height: 8,),
                      GestureDetector(
                          onTap: () async {
                            DateTime? datePicked = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2024));
                            if (datePicked != null) {
                              print(
                                  'Date Selected:${datePicked.day}-${datePicked.month}-${datePicked.year}');
                              String formettedDate =
                              DateFormat('dd-MM-yyyy').format(datePicked);
                              setState(() {
                                selectedPurchaseDate = formettedDate;
                              });
                            }
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width/2.3,
                            color: Colors.white,
                            child:  TextFormField(

                              onTap:
                                  () async{
                                DateTime? datePicked = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2024));
                                if (datePicked != null) {
                                  print(
                                      'Date Selected:${datePicked.day}-${datePicked.month}-${datePicked.year}');
                                  String formettedDate =
                                  DateFormat('dd-MM-yyyy').format(datePicked);
                                  setState(() {
                                    selectedPurchaseDate= formettedDate;
                                    purchaseDateCtr.text = formettedDate;
                                  });
                                }
                              },
                              controller: purchaseDateCtr,
                              decoration: InputDecoration(
                                border:InputBorder.none,
                                contentPadding: EdgeInsets.all(10),
                                hintText: 'dd-mm-yyyy',
                                // border: OutlineInputBorder(
                                //     borderRadius: BorderRadius.circular(10)),
                              ),
                              validator: (value){
                                if(value==null||value.isEmpty)
                                  return "Please Enter Date and time";
                                return null;
                              },
                            ),
                          )
                      ),
                    ],
                  ),
                  SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Custom_Text(text: 'Age'),
                      SizedBox(height: 8,),
                      Container(
                        width: MediaQuery.of(context).size.width/2.3,
                        color: Colors.white,
                        child: CustomTextFormField(hintText: '',),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Custom_Text(text: 'Weight'),
                      SizedBox(height: 8,),
                      Container(
                        width: MediaQuery.of(context).size.width/2.3,
                        color: Colors.white,
                        child: CustomTextFormField(hintText: '',),
                      )
                    ],
                  ),
                  SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Custom_Text(text: 'Photo'),
                      SizedBox(height: 8,),
                      Container(
                        width: MediaQuery.of(context).size.width/2.3,
                        // height: ,
                        color: Colors.white,
                        child:  GestureDetector(
                          onTap:(){ _showImageSourceDialog(context);},
                          child: Padding(padding: EdgeInsets.only(top: 15,right: 8,bottom: 15,left: 15),

                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [

                                  if(selectedImage==null)
                                   Text('image')
                                  else if(selectedImage != null)
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width/2.8,
                                      child: Text('$selectedImage',overflow: TextOverflow.ellipsis,),),

                                ],
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15,),

              Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Custom_Text(text: 'If Pregnant: Expected Delivery Due Date'),
                      SizedBox(height: 8,),
                      Container(
                        width: MediaQuery.of(context).size.width/2.3,
                        color: Colors.white,
                        child: CustomTextFormField(hintText: '',),
                      )
                    ],
              ),

              SizedBox(height: 15,),
              Text('If Male Selected type',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Radio(value: value, groupValue: groupValue, onChanged: onChanged)
                  Row(
                    children: [
                      Radio(value:'Breeder', groupValue: _btn,

                          activeColor: (breederIndex==1)?Color(0xff002E77):Colors.grey,
                          fillColor: MaterialStateColor.resolveWith((states) => (breederIndex==1)?Color(0xff002E77):Colors.grey ),
                          onChanged:(value){
                            setState(() {
                              _btn=value.toString();
                              breederIndex=1;
                              kurbaniIndex=0;
                              cuttingIndex=0;
                            });
                          }),
                      Text('Breeder',style: TextStyle(color:(breederIndex==1)?Color(0xff002E77):Colors.grey ),)
                    ],
                  ),
                  Row(
                    children: [
                      Radio(value:'Kurbani', groupValue: _btn,

                          activeColor: (kurbaniIndex==1)?Color(0xff002E77):Colors.grey,
                          fillColor: MaterialStateColor.resolveWith((states) => (kurbaniIndex==1)?Color(0xff002E77):Colors.grey ),
                          onChanged:(value){
                            setState(() {

                              _btn=value.toString();
                              breederIndex=0;
                              kurbaniIndex=1;
                              cuttingIndex=0;
                            });
                          }),
                      Text('Kurbani',style: TextStyle(color:(kurbaniIndex==1)?Color(0xff002E77):Colors.grey ),)
                    ],
                  ),
                  Row(
                    children: [
                      Radio(value:'Cutting', groupValue: _btn,

                          activeColor: Color(0xff002E77),
                          fillColor: MaterialStateColor.resolveWith((states) => (cuttingIndex==1)?Color(0xff002E77):Colors.grey ),
                          onChanged:(value){
                            setState(() {
                              _btn=value.toString();
                              kurbaniIndex=0;
                              breederIndex=0;
                              cuttingIndex=1;
                            });
                          }),
                      Text('Cutting',style: TextStyle(color:(cuttingIndex==1)?Color(0xff002E77):Colors.grey ) ),
                    ],
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,color: Colors.grey,),
              SizedBox(height: 15
                ,),
              Text('Ready For Sale',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Radio(value: value, groupValue: groupValue, onChanged: onChanged)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(value:'yes', groupValue: _btn2,

                          activeColor: (yesIndex==1)?Color(0xff002E77):Colors.grey ,
                          fillColor: MaterialStateColor.resolveWith((states) =>(yesIndex==1)?Color(0xff002E77):Colors.grey ),
                          onChanged:(value){
                            setState(() {
                              _btn2=value.toString();
                              yesIndex=1;
                              noIndex=0;
                            });
                          }),
                      Text('Yes',style: TextStyle(color:(kurbaniIndex==1)?Color(0xff002E77):Colors.grey  ),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio(value:'no', groupValue: _btn2,

                          activeColor:(noIndex==1)?Color(0xff002E77):Colors.grey ,
                          fillColor: MaterialStateColor.resolveWith((states) => (noIndex==1)?Color(0xff002E77):Colors.grey ),
                          onChanged:(value){
                            setState(() {
                              _btn2=value.toString();
                              noIndex=1;
                              yesIndex=0;
                            });
                          }),
                      Text('No',style: TextStyle(color:(noIndex==1)?Color(0xff002E77):Colors.grey ),)
                    ],
                  ),

                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,color: Colors.grey,),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sale Weight',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16)),
                  Text('${weight} kg',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16)),

                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sale Price',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16)),
                  Text('${sale}/- Per',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16)),

                ],
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,color: Colors.grey,),
              SizedBox(height: 40,),
              Btn(title: 'Save',height: 60,width: MediaQuery.of(context).size.width,)
            ],
          ) ,
        ),
      ),
    );
  }
}
