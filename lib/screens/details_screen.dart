import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterproject/constants.dart';
import 'package:flutterproject/size_config.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight * 1,
        decoration: BoxDecoration(
          color: Color(0xfff5f4ef),
          image: DecorationImage(
              image: AssetImage("assets/images/ux_big.png"),
              alignment: Alignment.topRight),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizontal * 4,
                  vertical: SizeConfig.blockSizeVertical * 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildIcons(),
                  SizedBox(height: SizeConfig.screenHeight * 0.05),
                  buildText(),
                  SizedBox(height: SizeConfig.screenHeight * 0.02),
                  buildHeader(),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.blockSizeHorizontal * 10,
                          vertical: SizeConfig.blockSizeVertical * 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Course Content",
                            style: kTitleTextStyle,
                          ),
                          SizedBox(
                            height: SizeConfig.screenWidth * 0.08,
                          ),
                          Playist(
                            number: '1',
                            duration: 5.35,
                            title: "Welcome to the Course",
                          ),
                          Playist(
                            number: '2',
                            duration: 19.35,
                            title: "Desing Thinking -Intro",
                          ),
                          Playist(
                            number: '3',
                            duration: 15.35,
                            title: "Desing  Process",
                          ),
                          Playist(
                            number: '4',
                            duration: 5.35,
                            title: "Custemer Perspective",
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 0,
                      bottom: 0,
                      child: Container(
                        width: double.infinity,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 4),
                                blurRadius: 50,
                                color: kTextColor.withOpacity(.2)),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: SizeConfig.screenWidth * 0.2,
                              height: SizeConfig.screenHeight * 0.07,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red[100],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: SvgPicture.asset(
                                  "assets/images/icon/shopping-bag.svg",
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: SizeConfig.screenWidth * 0.65,
                              height: SizeConfig.screenHeight * 0.07,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.blue[300],
                              ),
                              child: Text("Buy Now",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18)),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Desing Thinking",
          style: kHeadingextStyle,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.02),
        Row(
          children: [
            SvgPicture.asset("assets/images/icon/person.svg"),
            Text("18k"),
            SizedBox(width: SizeConfig.screenHeight * 0.03),
            SvgPicture.asset("assets/images/icon/star.svg"),
            Text("4.8"),
          ],
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.05),
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: "\$50", style: kHeadingextStyle.copyWith(fontSize: 32)),
          TextSpan(
            text: "\$70",
            style: TextStyle(
                color: kTextColor.withOpacity(.5),
                decoration: TextDecoration.lineThrough),
          )
        ])),
      ],
    );
  }

  Container buildText() {
    return Container(
      width: SizeConfig.screenWidth * 0.24,
      height: 20,
      decoration: BoxDecoration(
        color: kBestSellerColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Text(
        "BESTSELLERS",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }

  Row buildIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset("assets/images/icon/arrow-left.svg"),
        SvgPicture.asset("assets/images/icon/more-vertical.svg"),
      ],
    );
  }
}

class Playist extends StatelessWidget {
  const Playist({
    Key key,
    @required this.number,
    @required this.duration,
    @required this.title,
  }) : super(key: key);
  final String number;
  final double duration;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Text(
            number,
            style: kHeadingextStyle.copyWith(
                color: kTextColor.withOpacity(.15), fontSize: 32),
          ),
          SizedBox(
            width: SizeConfig.screenWidth * 0.06,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$duration mins\n",
                  style: TextStyle(
                    color: kTextColor.withOpacity(.5),
                    fontSize: 18,
                  ),
                ),
                TextSpan(
                  text: title,
                  style: kTitleTextStyle.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 40,
            width: 40,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: kGreenColor),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
