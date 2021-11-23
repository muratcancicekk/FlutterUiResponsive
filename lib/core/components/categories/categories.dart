import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterproject/core/theme/constants.dart';
import 'package:flutterproject/size_config.dart';
import 'package:flutterproject/view/details_page/details_screen.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
    @required this.img,
    @required this.headText,
    @required this.subText,
  }) : super(key: key);
  final String img;
  final String headText;
  final int subText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                img,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  headText,
                  style: kTitleTextStyle,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
                Text(
                  "$subText Courses",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailsScreen()));
      },
    );
  }
}
