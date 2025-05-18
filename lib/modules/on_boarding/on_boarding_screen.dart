import 'package:dccccc/shared/style/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:dccccc/modules/home page/homepage.dart';
import '../../shared/style/widgets.dart';

class BoardingModel {
  final String title;
  final String body;
  final String body2;
  final String image;

  BoardingModel({
    required this.title,
    required this.body,
    required this.body2,
    required this.image,
  });
}

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(
        title: "Welcome",
        body: "To Digital Clinic",
        body2:
            "Far far away,behind the word mountains.far from the countries vokalia and consonantia there live the blind texts.",
        image: "assets/images/OB1.svg"),
    BoardingModel(
        title: "ASK",
        body: "a DOCTOR ONLINE",
        body2:
            "Far far away,behind the word mountains.far from the countries vokalia and consonantia there live the blind texts.",
        image: "assets/images/OB2.svg"),
    BoardingModel(
        title: "physician",
        body: "on your Doorstep",
        body2:
            "Far far away,behind the word mountains.far from the countries vokalia and consonantia there live the blind texts.",
        image: "assets/images/OB3.svg"),
  ];

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return Homepage();
                }
                )
                );
                setState(() {
                  ;
                });
              },
              child: const Text(
                'Skip',
                style: TextStyle(color: PC),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: boardController,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) =>
                    buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
                onPageChanged: (int index) {
                  if (index == boarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SmoothPageIndicator(
                  controller: boardController,
                  count: boarding.length,
                  effect:  ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    dotHeight: 10.0,
                    expansionFactor: 4,
                    dotWidth: 10.0,
                    spacing: 5,
                    activeDotColor: PC,
                  ),
                ),
                const Spacer(),
                FloatingActionButton(
                  backgroundColor: PC,
                  onPressed: () {
                    if (isLast) {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return Homepage();
                      }));
                    } else {
                      boardController.nextPage(
                        duration: const Duration(
                          microseconds: 750,
                        ),
                        curve: Curves.fastLinearToSlowEaseIn,
                      );
                    }
                  },
                  child: Container(
                    width: 300,
                    child: textCustom(
                      text: "  next",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) => Column(
        children: [
          Text(
            model.title,
            style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.indigoAccent,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            model.body,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            model.body2,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: PC),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Center(
              child: SvgPicture.asset(
                model.image,
                width: 200,
              ),
            ),
          ),
        ],
      );
}
