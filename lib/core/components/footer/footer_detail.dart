import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterproject/shared/ui_helper.dart';
import 'package:flutterproject/size_config.dart';

class footerDetails extends StatelessWidget {
  const footerDetails({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
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
              UIHelper.SHOPPING_BAG_IMAGE,
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
          child: Text(text,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18)),
        ),
      ],
    );
  }
}
