import 'package:auchan/ui/theme/app_colors.dart';
import 'package:auchan/ui/widgets/auth/auth_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:intro_slider/scrollbar_behavior_enum.dart';
// make sure to import all the packages you need

//make class to upload to firebase

class IntroWidget extends StatelessWidget {
  const IntroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: IntroScreen()));
  }
}

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  IntroScreenState createState() => IntroScreenState();
}

// ------------------ Custom config ------------------
class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    slides.add(
      Slide(
        styleTitle: const TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat'),
        widgetTitle: SvgPicture.asset(
          'images/card.svg',
          width: 100,
          height: 100,
          color: AppColors.white,
        ),
        centerWidget: const Text(
          'Виртуальная карта ',
          style: TextStyle(
            color: Colors.green,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
          ),
        ),
        marginTitle: const EdgeInsets.only(top: 100.0, bottom: 20.0),
        marginDescription: const EdgeInsets.only(top: 10, left: 40, right: 40),
        description: "Реалные возможности с нереальной картой",
        styleDescription: const TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontStyle: FontStyle.normal,
            fontFamily: 'Montserrat'),

        backgroundColor: AppColors.black,
        // backgroundImage: "images/01.jpg",
        onCenterItemPress: () {},
      ),
    );
    slides.add(
      Slide(
        styleTitle: const TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat'),
        widgetTitle: SvgPicture.asset(
          'images/history.svg',
          width: 100,
          height: 100,
          color: AppColors.white,
        ),
        centerWidget: const Text(
          'История покупок',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
          ),
        ),
        marginTitle: const EdgeInsets.only(top: 100.0, bottom: 20.0),
        marginDescription: const EdgeInsets.only(top: 10, left: 40, right: 40),
        description: "Теперь не нужно помнить, что где и когда вы покупали",
        styleDescription: const TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontStyle: FontStyle.normal,
            fontFamily: 'Montserrat'),

        backgroundColor: AppColors.red,
        // backgroundImage: "images/01.jpg",
        onCenterItemPress: () {},
      ),
    );
    slides.add(Slide(
      styleTitle: const TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat'),
      widgetTitle: SvgPicture.asset(
        'images/task.svg',
        width: 100,
        height: 100,
        color: AppColors.white,
      ),
      centerWidget: const Text(
        'Мои списки',
        style: TextStyle(
          color: AppColors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat',
        ),
      ),
      marginTitle: const EdgeInsets.only(top: 100.0, bottom: 20.0),
      marginDescription: const EdgeInsets.only(top: 10, left: 40, right: 40),
      description:
          "Забудьте про бумажные листочки, теперь ходить за покупками стало легко и приятно",
      styleDescription: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontStyle: FontStyle.normal,
          fontFamily: 'Montserrat'),

      backgroundColor: AppColors.green,
      // backgroundImage: "images/01.jpg",
      onCenterItemPress: () {},
    ));
  }

  void onDonePress() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const AuthWidget()),
    );
  }

  Widget renderNextBtn() {
    return const Icon(
      Icons.navigate_next,
      color: AppColors.white,
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return const Icon(
      Icons.done,
      color: AppColors.white,
    );
  }

  Widget renderSkipBtn() {
    return const Icon(
      Icons.skip_next,
      color: AppColors.white,
    );
  }

  ButtonStyle myButtonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(const StadiumBorder()),
      backgroundColor:
          MaterialStateProperty.all<Color>(const Color(0x33Ffffff)),
      overlayColor: MaterialStateProperty.all<Color>(const Color(0x33FFA8B0)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      // List slides
      slides: slides,

      // Skip button
      renderSkipBtn: renderSkipBtn(),
      skipButtonStyle: myButtonStyle(),

      // Next button
      renderNextBtn: renderNextBtn(),
      nextButtonStyle: myButtonStyle(),

      // Done button
      renderDoneBtn: renderDoneBtn(),
      onDonePress: onDonePress,
      doneButtonStyle: myButtonStyle(),

      // Dot indicator
      colorDot: AppColors.white.withOpacity(0.3),
      colorActiveDot: AppColors.white,
      sizeDot: 13.0,

      // Show or hide status bar
      hideStatusBar: true,
      backgroundColorAllSlides: Colors.grey,

      // Scrollbar
      verticalScrollbarBehavior: scrollbarBehavior.SHOW_ALWAYS,
    );
  }
}
