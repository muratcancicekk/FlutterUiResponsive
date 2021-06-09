import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterproject/category.dart';
import 'package:flutterproject/constants.dart';
import 'package:flutterproject/size_config.dart';

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
            SvgPicture.asset("assets/images/icon/search.svg"),
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

  Row buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset("assets/images/icon/menu.svg"),
        Image.asset("assets/images/user.png")
      ],
    );
  }
}

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
    return Stack(
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
    );
  }
}
