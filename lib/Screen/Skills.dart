import 'package:flutter/material.dart';
import 'package:resume_app/utils/Colors.dart';
class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}
GlobalKey<FormState> formkey = GlobalKey();
class _SkillsState extends State<Skills> {
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
          'Skills',
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
              child:Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SingleChildScrollView(
                  child: Column(
                      children: [
                        ...List.generate(
                          txtSkillList.length,
                              (index) =>
                              ListTile(
                                title: TextField(
                                  cursorColor: Colors.black,
                                  controller: txtSkillList[index],
                                  decoration:  InputDecoration(
                                    prefixIcon: Icon(Icons.add_chart_rounded),
                                      labelText: 'Skill',
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black38)
                                      )
                                  ),
                                ),
                                trailing: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (txtSkillList.length > 1) {
                                        txtSkillList.removeAt(index);
                                      }
                                    });
                                  },
                                  icon: const Icon(
                                      Icons.delete,
                                      size: 30,
                                      color: Colors.black
                                  ),
                                ),
                              ),
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context).pushNamed('/home');
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: height*0.08,
                                  width: width*0.7,
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
                            ),
                            OutlinedButton(onPressed: () {
                              setState(() {
                                TextEditingController txtController = TextEditingController();
                                txtSkillList.add(txtController);
                              });
                            },
                              child:Icon(Icons.add, size:25,color: mainColor,),),
                          ],
                        )


                      ]
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

TextEditingController txtSkill =TextEditingController();
List<TextEditingController> txtSkillList =[txtSkill];
