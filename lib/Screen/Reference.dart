import 'package:flutter/material.dart';
import '../utils/Colors.dart';
import '../utils/Global.dart';
class Reference extends StatefulWidget {
  const Reference({super.key});

  @override
  State<Reference> createState() => _ReferenceState();
}
GlobalKey<FormState> formkey = GlobalKey();
class _ReferenceState extends State<Reference> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  Scaffold(
        backgroundColor: mainColor,
        appBar: AppBar(
          backgroundColor: mainColor,
          centerTitle: true,
          title: Text(
            'Reference',
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
                height: height * 0.8,
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
                              controller: txtRefName,
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
                                  labelText: 'Reference Name',
                                  labelStyle: TextStyle(color: mainColor,fontWeight: FontWeight.w400)
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: txtRefjob,
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
                                  prefixIcon: Icon(Icons.work),
                                  prefixIconColor: mainColor,
                                  labelText: 'Job Title',
                                  labelStyle: TextStyle(color: mainColor,fontWeight: FontWeight.w400)
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: txtRefCompany,
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
                              controller: txtRefEmail,
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
                              controller: txtRefPhone,
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
                                  prefixIcon: Icon(Icons.phone,),
                                  prefixIconColor: mainColor,
                                  labelText: 'Phone',
                                  labelStyle: TextStyle(color: mainColor,fontWeight: FontWeight.w400)
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              bool response = formkey.currentState!.validate();
                              if(response)
                              {
                                refName = txtRefName.text;
                                refJob = txtRefjob.text;
                                refCompany = txtRefCompany.text;
                                refEmail = txtRefEmail.text;
                                refPhone = txtRefPhone.text;
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

TextEditingController txtRefName = TextEditingController();
TextEditingController txtRefjob = TextEditingController();
TextEditingController txtRefCompany = TextEditingController();
TextEditingController txtRefEmail = TextEditingController();
TextEditingController txtRefPhone = TextEditingController();

