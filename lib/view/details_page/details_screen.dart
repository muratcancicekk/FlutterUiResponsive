import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterproject/core/components/footer/footer_detail.dart';
import 'package:flutterproject/core/constants/myconstants.dart';
import 'package:flutterproject/core/theme/constants.dart';
import 'package:flutterproject/core/components/playist/playist.dart';
import 'package:flutterproject/shared/ui_helper.dart';
import 'package:flutterproject/size_config.dart';
import 'package:flutterproject/view/home_page/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight * 1,
        decoration: BoxDecoration(
          color: Color(0xfff5f4ef),
          image: DecorationImage(
              image: AssetImage(UIHelper.BICYCLE_IMAGE),
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
                  buildIcons(context),
                  SizedBox(height: SizeConfig.screenHeight * 0.05),
                  buildText(context),
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
                  children: [buildPlayist(), buildFooter()],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned buildFooter() {
    return Positioned(
      right: 0,
      left: 0,
      bottom: 0,
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 50,
                color: kTextColor.withOpacity(.2)),
          ],
        ),
        child: footerDetails(
          text: "Buy",
        ),
      ),
    );
  }

  Padding buildPlayist() {
    return Padding(
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
            SvgPicture.asset(UIHelper.PERSON_ICON),
            Text("18k"),
            SizedBox(width: SizeConfig.screenHeight * 0.03),
            SvgPicture.asset(UIHelper.STAR_ICON),
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

  Container buildText(context) {
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

  Row buildIcons(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: SvgPicture.asset(UIHelper.ARROW_LEFT_ICON)),
        SvgPicture.asset(UIHelper.MORE_ICON),
      ],
    );
  }
}
