import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_app/utils/Colors.dart';
import 'package:resume_app/utils/Global.dart';

class PersonalDetails extends StatefulWidget {
  PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
  XFile? pickImage;
}

GlobalKey<FormState> formkey = GlobalKey();
ImagePicker imagePicker = ImagePicker();
File? fileImage;

class _PersonalDetailsState extends State<PersonalDetails> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: mainColor,
        centerTitle: true,
        title: Text(
          'Personal Information',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Container(
                  height: height * 0.7,
                  width: width * 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 100,bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                XFile? xPickImage = await imagePicker.pickImage(
                                    source:ImageSource.camera);
                                setState(() {
                                  fileImage=File(xPickImage!.path);
                                });
                              },
                              child: Container(
                                height: height*0.06,
                                width: width*0.25,
                                decoration: BoxDecoration(
                                  color: mainColor,
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                alignment: Alignment.center,
                                child: Text('Camera',style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),),
                              ),
                            ),
                            GestureDetector(
                              onTap: ()async {
                                XFile? xPickImage = await imagePicker.pickImage(
                                    source:ImageSource.gallery);
                                setState(() {
                                  fileImage=File(xPickImage!.path);
                                });
                              },
                              child: Container(
                                height: height*0.06,
                                width: width*0.25,
                                decoration: BoxDecoration(
                                  color: mainColor,
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                alignment: Alignment.center,
                                child: Text('Gallery',style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    controller: txtName,
                                    validator: (value){
                                      if(value!.isEmpty)
                                      {
                                        return 'Field Must be Filled';
                                      }
                                    },
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: mainColor,
                                              width: 1
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: mainColor,
                                              width: 2
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: Colors.red,
                                              width: 2
                                          ),
                                        ),
                                        prefixIcon: Icon(Icons.person),
                                        prefixIconColor: mainColor,
                                        labelText: 'Name',
                                        labelStyle: TextStyle(color: mainColor,fontWeight: FontWeight.w400)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    controller: txtAddress,
                                    validator: (value){
                                      if(value!.isEmpty)
                                      {
                                        return 'Field Must be Filled';
                                      }
                                    },
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: mainColor,
                                              width: 1
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: mainColor,
                                              width: 2
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: Colors.red,
                                              width: 2
                                          ),
                                        ),
                                        prefixIcon: Icon(Icons.location_on),
                                        prefixIconColor: mainColor,
                                        labelText: 'Address',
                                        labelStyle: TextStyle(color: mainColor,fontWeight: FontWeight.w400)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    controller: txtPhone,
                                    validator: (value){
                                      if(value!.isEmpty)
                                      {
                                        return 'Field Must be Filled';
                                      }
                                    },
                                    cursorColor: Colors.black,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: mainColor,
                                              width: 1
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: mainColor,
                                              width: 2
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: Colors.red,
                                              width: 2
                                          ),
                                        ),
                                        prefixIcon: Icon(Icons.phone),
                                        prefixIconColor: mainColor,
                                        labelText: 'Phone no/Mobile no.',
                                        labelStyle: TextStyle(color: mainColor,fontWeight: FontWeight.w400)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    controller: txtEmail,
                                    validator: (value){
                                      if(value!.isEmpty)
                                      {
                                        return 'Field Must be Filled';
                                      }
                                    },
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: mainColor,
                                              width: 1
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: mainColor,
                                              width: 2
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: Colors.red,
                                              width: 2
                                          ),
                                        ),
                                        prefixIcon: Icon(Icons.email,),
                                        prefixIconColor: mainColor,
                                        labelText: 'Email',
                                        labelStyle: TextStyle(color: mainColor,fontWeight: FontWeight.w400)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    controller: txtProfession,
                                    validator: (value){
                                      if(value!.isEmpty)
                                      {
                                        return 'Field Must be Filled';
                                      }
                                    },
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: mainColor,
                                              width: 1
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: mainColor,
                                              width: 2
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: Colors.red,
                                              width: 2
                                          ),
                                        ),
                                        prefixIcon: Icon(Icons.ac_unit_rounded,),
                                        prefixIconColor: mainColor,
                                        labelText: 'Profession',
                                        labelStyle: TextStyle(color: mainColor,fontWeight: FontWeight.w400)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only( top: 10,right: 240,bottom: 10),
                                  child: Text(
                                    'Gender ',
                                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                RadioListTile(
                                  value: 'male',
                                  activeColor: mainColor,
                                  groupValue: gender,
                                  onChanged: (value) {
                                    setState(() {
                                      gender=value!;
                                    });
                                  },
                                  title: Text('Male',style: TextStyle(
                                      fontSize: 17
                                  ),),
                                ),
                                RadioListTile(
                                  value: 'female',
                                  activeColor: mainColor,
                                  groupValue: gender,
                                  onChanged: (value) {
                                    setState(() {
                                      gender=value!;
                                    });
                                  },
                                  title: Text('Female',style: TextStyle(
                                      fontSize: 17
                                  ),),
                                ),
                                RadioListTile(
                                  value: 'others',
                                  activeColor: mainColor,
                                  groupValue: gender,
                                  onChanged: (value) {
                                    setState(() {
                                      gender=value!;
                                    });
                                  },
                                  title: Text('Others',style: TextStyle(
                                      fontSize: 17
                                  ),),
                                ),
                               GestureDetector(
                                 onTap: (){
                                   bool response = formkey.currentState!.validate();
                                   if(response)
                                   {
                                     name=txtName.text;
                                     add=txtAddress.text;
                                     phone=txtPhone.text;
                                     email=txtEmail.text;
                                     profession=txtProfession.text;
                                     Navigator.of(context).pushNamed('/home');
                                   }
                                 },
                                 child: Padding(
                                   padding: const EdgeInsets.all(10.0),
                                   child: Container(
                                     height: height*0.08,
                                     width: double.infinity,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(7),
                                       color: mainColor,
                                     ),
                                     alignment: Alignment.center,
                                     child: Text('Save',style: TextStyle(
                                       fontWeight: FontWeight.w500,
                                       fontSize: 20,
                                       color: Colors.white
                                     ),),
                                   ),
                                 ),
                               )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: height*0.18,
                    width: width*5,
                    decoration: BoxDecoration(
                      image:(fileImage!=null)?DecorationImage(image: FileImage(fileImage!),
                          fit: BoxFit.cover)
                          :null,
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                          color: mainColor,
                        width: 2
                      ),
                    ),
                    //child: Icon(Icons.person,size: 80,),
                  )
              ),

            ],
          ),
        ),
      ),
    );
  }
}

TextEditingController txtName = TextEditingController();
TextEditingController txtAddress = TextEditingController();
TextEditingController txtPhone = TextEditingController();
TextEditingController txtEmail = TextEditingController();
TextEditingController txtProfession = TextEditingController();