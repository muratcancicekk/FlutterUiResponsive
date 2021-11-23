import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterproject/core/theme/constants.dart';
import 'package:flutterproject/size_config.dart';

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
