import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:madhu_farma/Auth/LoginScreen.dart';
import '../Helper/AppBtn.dart';
import '../Helper/Colors.dart';
import '../Screens/goat_Farma_Screen.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  String? userType ;
  bool visible=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.grad1Color,
      body: SingleChildScrollView(
        physics:
        BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/1.0,
              child:Stack(
                  children:[ Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height/2.1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)
                            ),
                            color:colors.primary
                        ),
                      ),

                    ],
                  ),

                    Positioned(
                      top: 50,
                      left: 0,
                      right: 0,
                      child: SingleChildScrollView(
                        child: Column(

                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Text("Create New Account ",
                                    style: TextStyle(
                                        color: colors.secondary,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),),

                                  SizedBox(height: 40,),
                                ],
                              ),
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 20,top: 10),
                            ),

                            Container(
                              // height: MediaQuery.of(context).size.height/1.5,
                              margin: EdgeInsets.all(20),
                              child: Form(
                                key: _formKey,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.all(21),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: MediaQuery.of(context).size.height/15,
                                            child:Container(
                                              // width: MediaQuery.of(context).size.width/2.67,
                                              height: 30,
                                              padding: EdgeInsets.only(left: 10),

                                              decoration: const BoxDecoration(
                                                color: Color(0x25888888)
                                              ),
                                              child: DropdownButton2<String>(
                                                isExpanded: true,
                                                value:userType,
                                                //elevation: 5,
                                                style: TextStyle(color: Colors.black87),

                                                items: <String>[
                                                  'General User',
                                                  'Special User',
                                                ].map<DropdownMenuItem<String>>((String value) {
                                                  return DropdownMenuItem<String>(
                                                    value: value,
                                                    child: Text(value),
                                                  );
                                                }).toList(),

                                                hint: Text(
                                                  "User Type",
                                                ),
                                                onChanged: (String? value)  {
                                                  setState(() {
                                                    userType = value;
                                                  });
                                                },

                                                underline: Container(  // Use a container with zero height to remove the underline
                                                  height: 0,
                                                  color: Colors.transparent,
                                                ),
                                              ),


                                              ),

                                            ),
                                        SizedBox(height: 10,),
                                        TextFormField(
                                          keyboardType: TextInputType.text,
                                          inputFormatters: [
                                            LengthLimitingTextInputFormatter(10),
                                          ],
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Farm is required';
                                            }
                                            return null;
                                          },

                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            prefixIcon: Icon(Icons.person_rounded),
                                            fillColor: Color(0x25888888),
                                            filled: true,
                                            hintText: "Farm Name",
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        TextFormField(
                                          keyboardType: TextInputType.text,
                                          inputFormatters: [
                                            LengthLimitingTextInputFormatter(10),
                                          ],
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'First Name is required';
                                            }
                                            return null;
                                          },

                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            prefixIcon: Icon(Icons.person_rounded),
                                            fillColor: Color(0x25888888),
                                            filled: true,
                                            hintText: "First Name",
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        TextFormField(
                                          keyboardType: TextInputType.text,
                                          inputFormatters: [
                                            LengthLimitingTextInputFormatter(10),
                                          ],
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Last Name is required';
                                            }
                                            return null;
                                          },

                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            prefixIcon: Icon(Icons.person_rounded),
                                            fillColor: Color(0x25888888),
                                            filled: true,
                                            hintText: "Last Name",
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        TextFormField(
                                          keyboardType: TextInputType.number,
                                          inputFormatters: [
                                            LengthLimitingTextInputFormatter(10),
                                          ],
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'mobile no. is required';
                                            }
                                            return null;
                                          },

                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            prefixIcon: Icon(Icons.call),
                                            fillColor: Color(0x25888888),
                                            filled: true,
                                            hintText: "Mobile No.",
                                          ),
                                        ),
                                        SizedBox(height: 10,),


                                        TextFormField(
                                          keyboardType: TextInputType.visiblePassword,
                                          obscureText: (visible)?true:false,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Password is required';
                                            }else if(value.length<8){
                                              return 'Password should have aleast 8 characters';
                                            }
                                            return null;
                                          },

                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            prefixIcon: Icon(Icons.lock),
                                            fillColor: Color(0x25888888),
                                            filled: true,
                                            hintText: "Password",
                                            suffixIcon:IconButton(
                                              icon: Icon(visible
                                                  ? Icons.visibility_off
                                                  : Icons.visibility ),
                                              onPressed: () {
                                                setState(
                                                      () {
                                                    visible = !visible;
                                                  },
                                                );
                                              },
                                            ),

                                          ),
                                        ),

                                        SizedBox(height: 25,),
                                        Btn(
                                          onPress: (){
                                            if(_formKey.currentState!.validate()){
                                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>GoatFarmaScreen())) ;
                                            }
                                          },
                                          title:"Sign Up",
                                          height: MediaQuery.of(context).size.width/8,
                                        ),
                                        SizedBox(height: 15,),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("Already have an account? ",
                                              style: TextStyle(
                                                  fontSize: 12
                                              ),),
                                            GestureDetector(
                                              onTap: (){
                                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen())) ;
                                              },
                                              child: Text("Log In",
                                                style: TextStyle(
                                                    fontSize: 12
                                                ),),
                                            ),

                                          ],
                                        )






                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 30,)
                          ],
                        ),
                      ),
                    )]
              ) ,
            ),
          ],
        ),
      ),
    );
  }
}
