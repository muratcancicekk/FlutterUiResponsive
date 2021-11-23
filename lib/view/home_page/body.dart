import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterproject/category.dart';
import 'package:flutterproject/core/components/categories/categories.dart';
import 'package:flutterproject/core/components/searchButton/search_button.dart';
import 'package:flutterproject/core/constants/myconstants.dart';
import 'package:flutterproject/core/theme/constants.dart';
import 'package:flutterproject/shared/ui_helper.dart';
import 'package:flutterproject/size_config.dart';
import 'package:flutterproject/view/details_page/details_screen.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    List<Category> categories = categoriesData
        .map((item) => Category(item['name'], item['courses'], item['image']))
        .toList();
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockSizeHorizontal * 4,
            vertical: SizeConfig.blockSizeVertical * 4),
        child: Column(
          children: [
            buildHeader(),
            SizedBox(
              height: SizeConfig.screenHeight * 0.05,
            ),
            buildSubtitle(),
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            buildSearchButton(),
            SizedBox(
              height: SizeConfig.screenHeight * 0.05,
            ),
            buildCat(),
            SizedBox(
              height: SizeConfig.screenHeight * 0.05,
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.7,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 2 / 3,
                  ),
                  itemCount: categories.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Categories(
                        img: categoriesData[index]["image"],
                        headText: categoriesData[index]["name"],
                        subText: categoriesData[index]["courses"]);
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Container buildSubtitle() {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hey Alex,",
            style: kHeadingextStyle,
          ),
          Text(
            "Find a course you want to learn",
            style: kSubheadingextStyle,
          ),
        ],
      ),
    );
  }

  Row buildCat() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Categories",
          style: kTitleTextStyle,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            "See All",
            style: TextStyle(color: kBlueColor, fontSize: 20),
          ),
        )
      ],
    );
  }

  Row buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(UIHelper.MENU_ICON),
        Image.asset(UIHelper.USER_IMAGE)
      ],
    );
  }
}
