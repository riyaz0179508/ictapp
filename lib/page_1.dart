import 'package:flutter/material.dart';
import 'package:ict/four_page.dart';
import 'package:ict/page_2.dart';
import 'package:ict/page_3.dart';
import 'package:ict/page_5.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);



  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
var _currentindex=0;



final pages=[
  SecondPage(),
  ThirdPage(),
  FourPage(),
  FivePage(),
];

  @override
  Widget build(BuildContext context) {

    final double screenHeight=MediaQuery.of(context).size.height;
    final double screenWidth=MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                height: screenHeight/5,
                child: Container(
                  color: Color(0xff04abe7),
                )),
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AppBar(
                  centerTitle: true,
                  title: Text("ICT Division Bangladesh"),
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,

                )),
            Positioned(
                left: 0,
                right: 0,
                top: screenHeight*0.15,
                height: screenHeight*0.10,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),

                )),
            Positioned(
              top: screenHeight*0.11,
              left: (screenWidth-200)/2,
              right: (screenWidth-200)/2,
              height: screenHeight*0.09,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/d.png"
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 2,color: Color(0xff04abe7),
                  ),
                ),
              ),
            ),

            Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: screenHeight*0.22, left: screenWidth*0.02, right: screenWidth*0.02),
                  child: Container(
                    height: screenHeight*0.26,
                    width: screenWidth,
                    child:
                    ImageSlideshow(
                      width: double.infinity,
                      initialPage: 0,
                      indicatorColor: Colors.blue,
                      indicatorBackgroundColor: Colors.grey,
                      onPageChanged: (value) {
                        debugPrint('Page changed: $value');
                      },
                      autoPlayInterval: 4000,
                      isLoop: true,
                      children: [
                        Image.asset(
                          'assets/images/aa.jpeg',
                          fit: BoxFit.fitHeight,
                        ),
                        Image.asset(
                          'assets/images/cc.jpg',
                          fit: BoxFit.fitHeight,
                        ),
                        Image.asset(
                          'assets/images/dd.jpg',
                          fit: BoxFit.fitHeight,
                        ),
                        Image.asset(
                          'assets/images/hh.jpg',
                          fit: BoxFit.fitHeight,
                        ),
                        Image.asset(
                          'assets/images/ii.jpg',
                          fit: BoxFit.fitHeight,
                        ),
                        Image.asset(
                          'assets/images/kk.jpeg',
                          fit: BoxFit.fitHeight,
                        ),
                      ],
                    ),
                  ),
                ),
                
                SizedBox(height: 30,),
                
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [

                      ElevatedButton(
                        
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
                            primary: Color(0xffa8d7ff),
                        ),

                          onPressed: (){

                          },
                          child: Text("ICT", style: TextStyle(fontSize: 15, color: Colors.black),)
                      ),
                    ],
                  ),
                )
              ],
            ),

          ],
        ),






        bottomNavigationBar: BottomNavigationBar(

          selectedFontSize: 15,



          currentIndex: _currentindex,
            items: [
              BottomNavigationBarItem(
                 backgroundColor: Colors.lightBlue,
                  icon: Icon(Icons.home),
                title: Text("Home"),
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                title: Text("Category"),

              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.wb_incandescent_rounded),
                title: Text("Training Centre"),
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.more),
                title: Text("More"),
              ),
            ],
          onTap: (index){
            setState(() {
              _currentindex=index;
            }
            );
          },
        ),
        //       bottomSheet: pages[_currentindex],



      ),
    );
  }
}
