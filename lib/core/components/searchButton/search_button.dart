import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterproject/shared/ui_helper.dart';
import 'package:flutterproject/size_config.dart';

Container buildSearchButton() {
  return Container(
    width: double.infinity,
    height: SizeConfig.screenHeight * 0.08,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25), color: Colors.grey.shade200),
    child: Padding(
      padding: EdgeInsets.symmetric(
          vertical: SizeConfig.blockSizeVertical * 2,
          horizontal: SizeConfig.safeBlockHorizontal * 5),
      child: Row(
        children: [
          SvgPicture.asset(UIHelper.SEARCH_ICON),
          SizedBox(
            width: SizeConfig.screenWidth * 0.03,
          ),
          Text(
            "Search for anything",
            style: TextStyle(color: Colors.grey[800]),
          )
        ],
      ),
    ),
  );
}
