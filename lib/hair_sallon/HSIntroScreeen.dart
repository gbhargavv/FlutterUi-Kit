import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/hair_sallon/HSLoginScreen.dart';
import 'package:flutter_ui_kit/util/hs_colors.dart';
import 'package:flutter_ui_kit/util/hs_images.dart';
import 'package:flutter_ui_kit/util/hs_strings.dart';
import 'package:flutter_ui_kit/util/text_styles.dart';

class HSIntroScreeen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HSIntroScreeen();
  }
}

class _HSIntroScreeen extends State<HSIntroScreeen> {
  PageController _pageController = PageController();
  int currentPage = 0;

  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Stack(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (i) {
                  currentPage = i;
                  setState(() {});
                },
                children: [
                  Column(
                    children: <Widget>[
                      Image.asset(ImageUtils.intro1,
                          height: MediaQuery.of(context).size.height * 0.7,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          IntroTitle1,
                          textAlign: TextAlign.center,
                          style: textStyle(
                              color: Colors.white,
                              size: 18,
                              fontFamily: font_bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          IntroDesc1,
                          textAlign: TextAlign.center,
                          style: textStyle(
                              color: Colors.white,
                              size: 14,
                              fontFamily: font_light),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Image.asset(ImageUtils.intro2,
                          height: MediaQuery.of(context).size.height * 0.7,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          IntroTitle2,
                          textAlign: TextAlign.center,
                          style: textStyle(
                              color: Colors.white,
                              size: 18,
                              fontFamily: font_bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          IntroDesc2,
                          textAlign: TextAlign.center,
                          style: textStyle(
                              color: Colors.white,
                              size: 14,
                              fontFamily: font_light),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Image.asset(ImageUtils.intro3,
                          height: MediaQuery.of(context).size.height * 0.7,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          IntroTitle3,
                          textAlign: TextAlign.center,
                          style: textStyle(
                              color: Colors.white,
                              size: 18,
                              fontFamily: font_bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          IntroDesc3,
                          textAlign: TextAlign.center,
                          style: textStyle(
                              color: Colors.white,
                              size: 14,
                              fontFamily: font_light),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 80,
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: DotsIndicator(
                  dotsCount: 3,
                  position: currentPage.toDouble(),
                  decorator: DotsDecorator(
                    color: HSGreyColor.withOpacity(0.5),
                    activeColor: HSColorPrimary,
                    size: Size.square(9.0),
                    activeSize: Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 16,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      child: Text('Skip',
                          style: TextStyle(color: HSAppTextColorSecondary)),
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            new MaterialPageRoute(
                              builder: (context) {
                                return HSLoginScreen();
                              },
                            ));
                      },
                    ),
                    TextButton(
                      child: Text(currentPage != 2 ? 'Next' : 'Get Started',
                          style: TextStyle(color: HSAppTextColorSecondary)),
                      onPressed: () {
                        if (currentPage == 2) {
                          Navigator.pushReplacement(context,
                              new MaterialPageRoute(
                            builder: (context) {
                              return HSLoginScreen();
                            },
                          ));
                        } else
                          _pageController.nextPage(
                              duration: Duration(seconds: 1),
                              curve: Curves.linear);
                      },
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
