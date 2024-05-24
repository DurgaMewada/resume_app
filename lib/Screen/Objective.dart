import 'package:flutter/material.dart';
import '../utils/Colors.dart';
import '../utils/Global.dart';
class Objective extends StatefulWidget {
  const Objective({super.key});

  @override
  State<Objective> createState() => _ObjectiveState();
}
GlobalKey<FormState> formkey = GlobalKey();
class _ObjectiveState extends State<Objective> {
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
            'Objective',
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
                              controller: txtObject,
                              validator: (value){
                                if(value!.isEmpty)
                                {
                                  return 'Field Must be Filled';
                                }
                              },
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 80,horizontal: 20),
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
                                  prefixIcon: Icon(Icons.file_copy_outlined),
                                  prefixIconColor: mainColor,
                                  labelText: 'Objective',
                                  labelStyle: TextStyle(color: mainColor,fontWeight: FontWeight.w400)
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              objective=txtObject.text;
                              Navigator.of(context).pushNamed('/home');
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
TextEditingController txtObject = TextEditingController();