import 'package:flutter/material.dart';

import '../utils/Colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: mainColor,
        leading: Icon(
          Icons.menu,
          size: 20,
          color: Colors.white,
        ),
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      drawer: Drawer(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)
            )
        ),
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(padding: const EdgeInsets.only(
                right: 200
            ),
              child: Text('All Labels',
                style: TextStyle(color: Colors.grey.shade900, fontSize: 15),),
            ),
            ListTile(
              leading: Icon(Icons.star_border, size: 25, color: Colors.black,),
              title: Text('Starred', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
              )),
            ),
            ListTile(
              leading: Icon(Icons.access_time, size: 25, color: Colors.black,),
              title: Text('Snoozed', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
              )),
            ),
            ListTile(
              leading: Icon(Icons.send, size: 25, color: Colors.black,),
              title: Text('Sent', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
              )),
            ),
            ListTile(
              leading: Icon(
                Icons.drafts_outlined, size: 25, color: Colors.black,),
              title: Text('All mail', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
              )),
            ),
            ListTile(
              leading: Icon(Icons.delete, size: 25, color: Colors.black,),
              title: Text('Bin', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
              )),
            ),
            ListTile(
              leading: Icon(Icons.search, size: 25, color: Colors.black,),
              title: Text('Search', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
              )),
            ),
            ListTile(
              leading: Icon(
                Icons.report_gmailerrorred, size: 25, color: Colors.black,),
              title: Text('Spam', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
              )),
            ),
            ListTile(
              leading: Icon(Icons.note_add, size: 25, color: Colors.black,),
              title: Text('Drafts', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
              )),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(padding: const EdgeInsets.only(
                right: 180
            ),
              child: Text('Commnuicate',
                style: TextStyle(color: Colors.grey.shade900, fontSize: 15),),
            ),
            ListTile(
              leading: Icon(Icons.share, size: 25, color: Colors.black,),
              title: Text('Share', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
              )),
            ),
            ListTile(
              leading: Icon(Icons.settings, size: 25, color: Colors.black,),
              title: Text('Setting', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
              )),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: height * 0.08,
              width: double.infinity,
              decoration: BoxDecoration(
                color: mainColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/personal');
                    },
                    child: buildContainer(height, width,
                        Icon(Icons.person, size: 20, color: mainColor,),
                        'Personal\n Details'),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/edu');
                      },
                      child: buildContainer(height, width,
                          Icon(Icons.school, size: 20, color: mainColor),
                          'Education')),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/experience');
                      },
                      child: buildContainer(height, width, Icon(
                          Icons.person_search_sharp, size: 20,
                          color: mainColor), 'Experience')),
                ],
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/skill');
                  },
                  child: buildContainer(height, width, Icon(
                    Icons.local_police_rounded, size: 20, color: mainColor,),
                      'Skills'),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/obj');
                    },
                    child: buildContainer(height, width,
                        Icon(Icons.flag_sharp, size: 20, color: mainColor),
                        'Objective')),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/ref');
                    },
                    child: buildContainer(height, width, Icon(
                        Icons.person_pin_sharp, size: 20, color: mainColor),
                        'Reference')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8, right: 180),
            child: Text('More Sections', style: TextStyle(
              color: mainColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/pro');
                    },
                    child: buildContainer(height, width, Icon(
                        Icons.file_copy_rounded, size: 20, color: mainColor),
                        'Projects')),
                SizedBox(width: 20,),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/language');
                    },
                    child: buildContainer(height, width,
                        Icon(Icons.abc, size: 20, color: mainColor),
                        'Languages')),
                SizedBox(width: 20,),
                buildContainer(
                    height, width, Icon(Icons.add, size: 20, color: mainColor),
                    'Add More\n Sections'),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23, right: 170, top: 10),
            child: Text('Manage Sections', style: TextStyle(
              color: mainColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 18, left: 18),
            child: Container(
              height: height * 0.08,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(Icons.read_more, size: 25, color: mainColor,),
                  ),
                  SizedBox(width: 5,),
                  Text('Rearrange/Headings', style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.w500,
                    color: mainColor,
                  ),)
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap:() {
               Navigator.of(context).pushNamed('/pdf');
          },
            child: Padding(
              padding: const EdgeInsets.only(top: 100, right: 18, left: 18),
              child: Container(
                  height: height * 0.08,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: mainColor,
                  ),
                  alignment: Alignment.center,
                  child: Text('Generate CV ', style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),)
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildContainer(double height, double width, Icon i1, String name) {
    return Container(
      height: height * 0.12,
      width: width * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          i1,
          Text(name, style: TextStyle(
              color: mainColor, fontSize: 13, fontWeight: FontWeight.w500
          ),)
        ],
      ),
    );
  }
}

