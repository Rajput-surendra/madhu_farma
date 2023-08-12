import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:madhu_farma/Helper/Appbar.dart';
import 'package:madhu_farma/Helper/Colors.dart';
import 'package:madhu_farma/Helper/CustomButton.dart';
import 'package:madhu_farma/Helper/toast.dart';



class ScreenGoat extends StatefulWidget {
  const ScreenGoat({Key? key}) : super(key: key);

  @override
  State<ScreenGoat> createState() => _ScreenGoatState();
}

class _ScreenGoatState extends State<ScreenGoat> {

  TextEditingController expiryController = TextEditingController();
  TextEditingController dueController = TextEditingController();
  String? goatValue ;
  final List<String> goatValueitems = ['Goat', 'Goat Male', 'Goat FeMale'];
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    onDrawerChanged :(isOpened) => Icon(Icons.ac_unit),
      // resizeToAvoidBottomInset: true,
      bottomSheet:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        child: Btn(
          title: "Save",height: 55,

          onPress: (){
            if(_formKey.currentState!.validate()){

            }else{
              showSnackbarMessage(context, "Please Fill All Field!!!");
            }
          },
        ),
      ),
      backgroundColor: colors.grad1Color,

      appBar: customAppBar(context: context, text:"Goat19", isTrue: true, ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text("Tag ID*",style: TextStyle(
                    color: colors.blacktextColor
                  ),),
                  Card(
                  child: Container(
                    margin: EdgeInsets.only(left: 10,right: 10),
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text("Scan / enter",style: TextStyle(color: colors.textColor),),
                        Icon(Icons.document_scanner_outlined)
                      ],
                    ),
                  )
                ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(" Tag ID",style: TextStyle(
                                color: colors.blacktextColor
                            ),),
                            Card(
                                child: Container(
                                  margin: EdgeInsets.only(left: 10,right: 10),
                                   height: 55,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(top: 8),
                                     border: InputBorder.none
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter Tag ID';
                                      }
                                      return null;
                                    },


                                  )
                                )
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(" Category",style: TextStyle(
                                color: colors.blacktextColor
                            ),),
                            Card(
                                child: Container(
                                    margin: EdgeInsets.only(left: 10,right: 10),
                                    height: 55,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(top: 8),
                                          border: InputBorder.none
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please Enter Category';
                                        }
                                        return null;
                                      },

                                    )
                                )
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                SizedBox(height: 10,),
                 Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(" Age",style: TextStyle(
                              color: colors.blacktextColor
                          ),),
                          Card(
                              child: Container(
                                  margin: EdgeInsets.only(left: 10,right: 10),
                                  height: 55,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(top: 8),
                                        border: InputBorder.none
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter Age';
                                      }
                                      return null;
                                    },

                                  )
                              )
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(" Weight",style: TextStyle(
                              color: colors.blacktextColor
                          ),),
                          Card(
                              child: Container(
                                  height: 55,
                                  margin: EdgeInsets.only(left: 10,right: 10),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(top: 8),
                                        border: InputBorder.none
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter Weight';
                                      }
                                      return null;
                                    },

                                  )
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(" Select Medicine",style: TextStyle(
                              color: colors.blacktextColor
                          ),),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 3,bottom: 3),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton2<String>(
                                  isExpanded: true,
                                  hint: const Padding(
                                    padding: EdgeInsets.only(bottom: 0),
                                    child: Text("Select Medicine",
                                      style: TextStyle(
                                          color: colors.blackTemp,fontWeight: FontWeight.normal,
                                        fontSize:13
                                      ),),
                                  ),
                                  // dropdownColor: colors.primary,
                                  value: goatValue,
                                  icon:  const Padding(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Icon(Icons.keyboard_arrow_down_rounded,  color: colors.secondary,size: 30,),
                                  ),
                                  // elevation: 16,
                                  style:  TextStyle(color: colors.secondary,fontWeight: FontWeight.bold),
                                  underline: Padding(
                                    padding: const EdgeInsets.only(left: 0,right: 0),
                                    child: Container(
                                      // height: 2,
                                      color:  colors.whiteTemp,
                                    ),
                                  ),
                                  onChanged: (String? value) {
                                    // This is called when the user selects an item.
                                    setState(() {
                                      goatValue = value!;

                                    });
                                  },

                                  items: goatValueitems
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child:
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Text(value,style: const TextStyle(color: colors.textColor,fontWeight: FontWeight.normal),),
                                          ),
                                        ],
                                      ),
                                    );

                                  }).toList(),

                                ),

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(" Medicine Id",style: TextStyle(
                              color: colors.blacktextColor
                          ),),
                          Card(
                              child: Container(
                                  height: 55,
                                  margin: EdgeInsets.only(left: 10,right: 10),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,

                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(top: 8),
                                        border: InputBorder.none
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter Medicine Id';
                                      }
                                      return null;
                                    },

                                  )
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Text("Scan Medicine",style: TextStyle(
                    color: colors.blacktextColor
                ),),
                Card(
                    child: Container(
                      margin: EdgeInsets.only(left: 10,right: 10),
                      height: 55,
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("Scan Medicine",style: TextStyle(color: colors.blacktextColor),),
                          Icon(Icons.document_scanner_outlined)
                        ],
                      ),
                    )
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(" Batch No.",style: TextStyle(
                              color: colors.blacktextColor
                          ),),
                          Card(
                              child: Container(
                                  margin: EdgeInsets.only(left: 10,right: 10),
                                  height: 55,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(top: 8),
                                        border: InputBorder.none
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter Batch No.';
                                      }
                                      return null;
                                    },

                                  )
                              )
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(" Expiry Date",style: TextStyle(
                              color: colors.blacktextColor
                          ),),
                          Card(
                            child: Container(
                              height: 55,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: TextFormField(
                                  readOnly: true,
                                  onTap: (){
                                    _selectDateStart();
                                  },
                                  controller:expiryController,
                                  decoration: InputDecoration(

                                    border: InputBorder.none,

                                      counterText: "",
                                      hintText: 'Expiry Date',
                                      contentPadding: EdgeInsets.only(left: 10)
                                  ),
                                  validator: (v) {
                                    if (v!.isEmpty) {
                                      return "Expiry Date is required";
                                    }

                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(" Recommended",style: TextStyle(
                              color: colors.blacktextColor
                          ),),
                          Card(
                              child: Container(
                                  margin: EdgeInsets.only(left: 10,right: 10),
                                  height: 55,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(top: 8),
                                        border: InputBorder.none
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter Recommended.';
                                      }
                                      return null;
                                    },

                                  )
                              )
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(" Due On",style: TextStyle(
                              color: colors.blacktextColor
                          ),),
                          Card(
                            child: Container(
                              height: 55,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: TextFormField(
                                  readOnly: true,
                                  onTap: (){
                                    _dueDate();
                                  },
                                  controller:dueController,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,

                                      counterText: "",
                                      hintText: 'Expiry Date',
                                      contentPadding: EdgeInsets.only(left: 10)
                                  ),
                                  validator: (v) {
                                    if (v!.isEmpty) {
                                      return "Due On Date is required";
                                    }

                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Text(" Enter Dose Qty",style: TextStyle(
                    color: colors.blacktextColor
                ),),
                Card(
                    child: Container(
                        margin: EdgeInsets.only(left: 10,right: 10),
                        height: 55,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 8),
                              border: InputBorder.none
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Dose Qty';
                            }
                            return null;
                          },

                        )
                    )
                ),
                SizedBox(height: 10,),
              Text("  Direction : How to do vaccine",style: TextStyle(
                color: colors.textColor
            ),),
                SizedBox(height: 82,),



              ],
            ),
          ),
        ),
      ),
    );
  }

  String _dateValue = '';
  var dateFormate;
  String convertDateTimeDisplay(String date)  {
    final DateFormat displayFormater = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
    final DateFormat serverFormater = DateFormat('yyyy-MM-dd');
    final DateTime displayDate = displayFormater.parse(date);
    final String formatted = serverFormater.format(displayDate);
    return formatted;
  }
  Future _selectDateStart() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate:  DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2025),
        //firstDate: DateTime.now().subtract(Duration(days: 1)),
        // lastDate: new DateTime(2022),
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData.light().copyWith(
                primaryColor: colors.primary,
                accentColor: Colors.black,
                colorScheme:  ColorScheme.light(primary:  colors.primary),
                // ColorScheme.light(primary: const Color(0xFFEB6C67)),
                buttonTheme:
                ButtonThemeData(textTheme: ButtonTextTheme.accent)),
            child: child!,
          );
        });
    if (picked != null)
      setState(() {
        String yourDate = picked.toString();
        _dateValue = convertDateTimeDisplay(yourDate);
        print(_dateValue);
        dateFormate = DateFormat("yyyy/MM/dd").format(DateTime.parse(_dateValue ?? ""));
        expiryController = TextEditingController(text: _dateValue);


      });
  }
  Future _dueDate() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate:  DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2025),
        //firstDate: DateTime.now().subtract(Duration(days: 1)),
        // lastDate: new DateTime(2022),
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData.light().copyWith(
                primaryColor: colors.primary,
                accentColor: Colors.black,
                colorScheme:  ColorScheme.light(primary:  colors.primary),
                // ColorScheme.light(primary: const Color(0xFFEB6C67)),
                buttonTheme:
                ButtonThemeData(textTheme: ButtonTextTheme.accent)),
            child: child!,
          );
        });
    if (picked != null)
      setState(() {
        String yourDate = picked.toString();
        _dateValue = convertDateTimeDisplay(yourDate);
        print(_dateValue);
        dateFormate = DateFormat("yyyy/MM/dd").format(DateTime.parse(_dateValue ?? ""));
        dueController = TextEditingController(text: _dateValue);


      });
  }

}
