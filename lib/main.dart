import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

        ),
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(360, 640),
    );
  }
}

class HomePage extends StatelessWidget {
 /** final purpleColor = Color(0xff6688FF);
     final darkTextColor = Color(0xff1F1A3D);
     final lightTextColor = Color(0xff999999);
     final textFieldColor = Color(0xffF5F6FA);
     final borderColor = Color(0xffD9D9D9);**/

  /**Widget getTextField({required String hint}) {
      return TextField(
      decoration: InputDecoration(
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(color: Colors.transparent, width: 0),
      ),
      enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(color: Colors.transparent, width: 0),
      ),
      contentPadding:
      EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      filled: true,
      fillColor: textFieldColor,
      hintText: hint,
      hintStyle: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      )),
      );
      }**/

  @override
  Widget build(BuildContext context){
   return Scaffold(
     body: SingleChildScrollView(
       child: Center(

         child: Column(
           children: [
             SizedBox(height: 20,),
             Container(
               width: 20.w,
               height: 20.h,
               color: Colors.red,
             ),
         SizedBox(height: 20,),

         //If you want to display a square based on width:
             Container(
               width: 20.w,
               height: 20.w,
               color: Colors.red,
             ),
             SizedBox(height: 20,),

         //If you want to display a square based on height:
             Container(
               width: 20.h,
               height: 20.h,
               color: Colors.red,
             ),
             SizedBox(height: 20,),

         //If you want to display a square based on minimum(height, width):
             Container(
               width: 20.r,
               height: 20.r,
               color: Colors.red,
             ),

             Text(
               '16sp, will not change with the system.',
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 16.sp,
               ),
               textScaleFactor: 1.0,
             ),
             Text(
               '16sp,if data is not set in MediaQuery,my font size will change with the system.',
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 16.sp,
               ),
             ),
             ElevatedButton(onPressed: (){
               log("love");
             }, child: Text("data"),
             style: ButtonStyle(
               padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 100.w))
             ),)
           ],
         ),

       ),
     ),

   );
  }





/** {
    return Scaffold(
    body: SafeArea(
    child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 24.w),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    SizedBox(
    height: 52.h,
    ),
    Text(
    "Sign Up to Masterminds",
    style: TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
    color: darkTextColor,
    ),
    ),
    SizedBox(
    height: 4.h,
    ),
    Wrap(
    children: [
    Text(
    "Already have an account? ",
    style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: lightTextColor,
    ),
    ),
    Text(
    "Login",
    style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: purpleColor,
    ),
    ),
    ],
    ),
    SizedBox(
    height: 24.h,
    ),
    getTextField(hint: "Full Name"),
    SizedBox(
    height: 16.h,
    ),
    getTextField(hint: "Email"),
    SizedBox(
    height: 16.h,
    ),
    getTextField(hint: "Password"),
    SizedBox(
    height: 16.h,
    ),
    getTextField(hint: "Confirm Password"),
    SizedBox(
    height: 16.h,
    ),
    SizedBox(
    width: double.infinity,
    child: TextButton(
    onPressed: () {},
    style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(purpleColor),
    foregroundColor: MaterialStateProperty.all(Colors.white),
    padding: MaterialStateProperty.all(
    EdgeInsets.symmetric(vertical: 14.h)),
    textStyle: MaterialStateProperty.all(TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    ))),
    child: Text("Create Account"),
    ),
    ),
    SizedBox(height: 16.h,),
    Row(
    children: [
    Expanded(child: Divider()),
    SizedBox(width: 16.w,),
    Text(
    "or sign up via",
    style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: lightTextColor,
    ),
    ),
    SizedBox(width: 16.w,),
    Expanded(child: Divider()),
    ],
    ),
    SizedBox(height: 16.h,),
    SizedBox(
    width: double.infinity,
    child: TextButton(
    onPressed: () {},
    style: ButtonStyle(
    side: MaterialStateProperty.all(BorderSide(color: borderColor,)),
    foregroundColor: MaterialStateProperty.all(darkTextColor),
    padding: MaterialStateProperty.all(
    EdgeInsets.symmetric(vertical: 14.h)),
    textStyle: MaterialStateProperty.all(TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    ))),
    child: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
    Image.asset("assets/Google.png"),
    SizedBox(width : 10.w),
    Text("Google"),
    ],
    ),
    ),
    ),
    SizedBox(height: 16.h,),
    Wrap(
    children: [
    Text(
    "By signing up to Masterminds you agree to our ",
    style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: lightTextColor,
    ),
    ),
    Text(
    "terms and conditions",
    style: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: purpleColor,
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    ),
    );
    }**/
}
