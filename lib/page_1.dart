import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:url_launcher/url_launcher.dart';

const _url = 'https://ictd.gov.bd/';
const _urlTwo = 'http://www.gameapp.gov.bd/';
const _urlThree = 'https://bn.wikipedia.org/wiki/%E0%A6%AC%E0%A6%BE%E0%A6%82%E0%A6%B2%E0%A6%BE%E0%A6%A6%E0%A7%87%E0%A6%B6%E0%A7%87%E0%A6%B0_%E0%A6%95%E0%A6%BE%E0%A6%B0%E0%A6%BF%E0%A6%97%E0%A6%B0%E0%A6%BF_%E0%A6%AA%E0%A7%8D%E0%A6%B0%E0%A6%B6%E0%A6%BF%E0%A6%95%E0%A7%8D%E0%A6%B7%E0%A6%A3_%E0%A6%95%E0%A7%87%E0%A6%A8%E0%A7%8D%E0%A6%A6%E0%A7%8D%E0%A6%B0%E0%A7%87%E0%A6%B0_%E0%A6%A4%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%95%E0%A6%BE';


class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);



  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {





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

            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
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

                  SizedBox(height: screenHeight*0.10,),

                  Padding(
                    padding:  EdgeInsets.only(left: screenWidth*0.02, right: screenWidth*0.02),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                        onPressed: _launchURL,
                        child: Padding(
                          padding:  EdgeInsets.only(left: screenWidth*0.03, right: screenWidth*0.03, top: screenHeight*0.02, bottom: screenHeight*0.02),
                          child: Text("তথ্য ও যোগাযোগ প্রযুক্তি বিভাগ", style: TextStyle(fontSize: screenWidth*0.05),),
                        )),
                  ),
                  SizedBox(height: screenHeight*0.02,),


                  Padding(
                    padding:  EdgeInsets.only(left: screenWidth*0.02, right: screenWidth*0.02),
                    child: ElevatedButton(
                        onPressed: launchURL1,
                        child: Padding(
                          padding:  EdgeInsets.only(left: screenWidth*0.01, right: screenWidth*0.01, top: screenHeight*0.02, bottom: screenHeight*0.02),
                          child: Text("কারিগরি প্রশিক্ষণ কেন্দ্রের তালিকা", style: TextStyle(fontSize: screenWidth*0.05)),
                        )),
                  ),
                  SizedBox(height: screenHeight*0.02,),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth*0.02, right: screenWidth*0.02),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                        ),
                        onPressed: launchURL,
                        child: Padding(
                          padding:  EdgeInsets.only(left: screenWidth*0.05, right: screenWidth*0.05, top: screenHeight*0.02, bottom: screenHeight*0.02),
                          child: Text("মোবাইল গেইম ও অ্যাপ্লিকেশন", style: TextStyle(fontSize: screenWidth*0.05)),
                        )),
                  ),



                  SizedBox(height: screenHeight*0.01,),



                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

void launchURL() async =>
    await canLaunch(_urlTwo) ? await launch(_urlTwo) : throw 'Could not launch $_url';

void launchURL1() async =>
    await canLaunch(_urlThree) ? await launch(_urlThree) : throw 'Could not launch $_url';
