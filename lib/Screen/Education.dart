import 'package:flutter/material.dart';
import '../utils/Colors.dart';
import '../utils/Global.dart';
class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}
GlobalKey<FormState> formkey = GlobalKey();
class _EducationState extends State<Education> {
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
          'Education',
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
                            controller: txtSchool,
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
                                prefixIcon: Icon(Icons.maps_home_work_rounded),
                                prefixIconColor: mainColor,
                                labelText: 'School/College',
                                labelStyle: TextStyle(color: mainColor,fontWeight: FontWeight.w400)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: txtCourse,
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
                                prefixIcon: Icon(Icons.school),
                                prefixIconColor: mainColor,
                                labelText: 'Course/Degree',
                                labelStyle: TextStyle(color: mainColor,fontWeight: FontWeight.w400)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: txtPercentage,
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
                                prefixIcon: Icon(Icons.margin),
                                prefixIconColor: mainColor,
                                labelText: 'Percentage/CGPA',
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
                                  controller: txtStarty,
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
                                  controller: txtEndy,
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
                              school=txtSchool.text;
                              course=txtCourse.text;
                              marks=txtPercentage.text;
                              startyear=txtStarty.text;
                              endyear=txtEndy.text;
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

TextEditingController txtSchool =TextEditingController();
TextEditingController txtCourse = TextEditingController();
TextEditingController txtPercentage = TextEditingController();
TextEditingController txtStarty= TextEditingController();
TextEditingController txtEndy= TextEditingController();
