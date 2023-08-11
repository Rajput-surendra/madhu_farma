import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:madhu_farma/Auth/SignUpScreen.dart';
import '../Helper/AppBtn.dart';
import '../Helper/Colors.dart';
import '../Screens/goat_Farma_Screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showvalue = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.grad1Color,
      body: Container(
        height: MediaQuery.of(context).size.height*1.3,
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
                     color:colors.yellow
                     ),
                   ),
                 
            ],
          ),
          Positioned(
            top: 50,
            left: 0,
          right: 0,
            child: Column(

              children: [
                Container(
                  child: Column(
                    children: [
                      Text("Welcome to ",
                      style: TextStyle(
                        color: colors.secondary,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 5,),
                      Text("Madhu Farm ",
                        style: TextStyle(
                            color: colors.secondary,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                      SizedBox(height: 20,),
                    ],
                  ),
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 20,top: 10),
                ),

                Container(
                  height: MediaQuery.of(context).size.height/2,
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
                             TextFormField(
                               keyboardType: TextInputType.number,
                               inputFormatters: [
                                 LengthLimitingTextInputFormatter(10),
                               ],
                               validator: (value) {
                                 if (value!.isEmpty) {
                                   return 'Mobile no. is required';
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
                             SizedBox(height: 20,),
                             TextFormField(
                               keyboardType: TextInputType.visiblePassword,
                               validator: (value) {
                                 if (value!.isEmpty) {
                                   return 'Password is required';
                                 }else if(value.length<8){
                                   return 'Password should have a least 8 characters';
                                 }
                                 return null;
                               },

                               decoration: InputDecoration(
                                 border: InputBorder.none,
                                 prefixIcon: Icon(Icons.lock),
                                 fillColor: Color(0x25888888),
                                 filled: true,
                                 hintText: "Password",

                               ),
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [

                                 Row(
                                   children: [Transform.scale(
                                     scale: 0.8,
                                     child: Checkbox(
                                       activeColor: colors.primary,
                                       value: this.showvalue,
                                       onChanged: (value) {
                                         setState(() {
                                           this.showvalue = value!;
                                         });
                                       },
                                     ),
                                   ),
                                   Text("Remember Password",style: TextStyle(
                                     fontSize: 10
                                   ),),
                                   SizedBox(width: 10,)],
                                 ),
                                 Text("Forgot Password?",style: TextStyle(
                                     fontSize: 10
                                 ),)
                               ],
                             ),
                             SizedBox(height: 20,),
                             Btn(
                               onPress: (){
                                 if(_formKey.currentState!.validate()){
                                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>GoatFarmaScreen())) ;
                                 }
                               },
                               title:"Log In",
                               height: MediaQuery.of(context).size.width/8,
                             ),
                             SizedBox(height: 15,),
                             Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Text("Don\'t have an account? ",
                                 style: TextStyle(
                                   fontSize: 12
                                 ),),
                                 GestureDetector(
                                   onTap: (){
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpScreen())) ;
                                   },
                                   child: Text("Sign up",
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
              ],
            ),
          )]
        ) ,
      ),
    );
  }
}
