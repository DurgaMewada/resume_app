import 'package:flutter/material.dart';
import 'package:resume_app/utils/Colors.dart';

import '../utils/Global.dart';
class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}
GlobalKey<FormState> formkey = GlobalKey();
class _ExperienceState extends State<Experience> {
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
            'Experience',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                height: height * 0.72,
                width: width * 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: txtCompanyName,
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
                                  prefixIcon: Icon(Icons.home_work_outlined),
                                  prefixIconColor: mainColor,
                                  labelText: 'Company Name',
                                  labelStyle: TextStyle(color: mainColor,fontWeight: FontWeight.w400)
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: txtJob,
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
                                  prefixIcon: Icon(Icons.work_history),
                                  prefixIconColor: mainColor,
                                  labelText: 'Job Designation',
                                  labelStyle: TextStyle(color: mainColor,fontWeight: FontWeight.w400)
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: txtJobDetails,
                              validator: (value){
                                if(value!.isEmpty)
                                {
                                  return 'Field Must be Filled';
                                }
                              },
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
                                  prefixIcon: Icon(Icons.speaker_notes),
                                  prefixIconColor: mainColor,
                                  labelText: 'Details',
                                  labelStyle: TextStyle(color: mainColor,fontWeight: FontWeight.w400)
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    controller: txtJobStartY,
                                    validator: (value){
                                      if(value!.isEmpty)
                                      {
                                        return 'Field Must be Filled';
                                      }
                                    },
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
                                        prefixIcon: Icon(Icons.calendar_today_outlined),
                                        prefixIconColor: mainColor,
                                        labelText: 'Start Year',
                                        labelStyle: TextStyle(color: mainColor,fontWeight: FontWeight.w400)
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    controller: txtJobEndY,
                                    validator: (value){
                                      if(value!.isEmpty)
                                      {
                                        return 'Field Must be Filled';
                                      }
                                    },
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
                                        prefixIcon: Icon(Icons.calendar_month_outlined),
                                        prefixIconColor: mainColor,
                                        labelText: 'End Year',
                                        labelStyle: TextStyle(color: mainColor,fontWeight: FontWeight.w400)
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: (){
                              bool response = formkey.currentState!.validate();
                              if(response)
                              {
                                companyName=txtCompanyName.text;
                                job=txtJob.text;
                                details=txtJobDetails.text;
                                startDate=txtJobStartY.text;
                                endDate=txtJobEndY.text;
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
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}

TextEditingController txtCompanyName = TextEditingController();
TextEditingController txtJob = TextEditingController();
TextEditingController txtJobDetails = TextEditingController();
TextEditingController txtJobStartY = TextEditingController();
TextEditingController txtJobEndY = TextEditingController();
