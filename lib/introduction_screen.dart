import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:jobfinder/Jobs/jobs_screen.dart';
import 'package:jobfinder/LoginPage/login_screen.dart';
import 'package:jobfinder/user_state.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);
  final List<PageViewModel> Pages = [
    PageViewModel(
      title: 'A Free Virtual Job Search Platform',
      body: 'Is Now \n Social Media Platform for Job Search',

      image:
           Center(
              child: Image.asset('assets/images/intro1.png'),
            ),
      decoration: const PageDecoration(
        pageColor: Colors.cyan,
        titleTextStyle : TextStyle(
          fontSize: 35.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),

    PageViewModel(
      title: '100% FREE',
      body: 'We never take money and We never make money for Job\n \n Kindly report any person asking for money through email to report@hireup.com',

      image: Center(
        child: Image.asset('assets/images/intro2.png'),
      ),
      decoration: const PageDecoration(
        pageColor: Colors.yellow,
        titleTextStyle : TextStyle(
          fontSize: 45.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),

    PageViewModel(
      title: 'Search Job',
      body: 'Apply hundreds of Jobs is no more required using our platform',
      image: Center(
        child: Image.asset('assets/images/intro3.png'),
      ),
      decoration: const PageDecoration(
        pageColor: Colors.lightGreen,
        titleTextStyle : TextStyle(
          fontSize: 45.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),

    PageViewModel(
      title: 'Post New Job',
      body: 'You can Post a new Job for the certain time period',
      image: Center(
        child: Image.asset('assets/images/intro4.png'),
      ),
      decoration: const PageDecoration(
        pageColor: Colors.blue,
        titleTextStyle : TextStyle(
          fontSize: 45.0,
         // color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),

    PageViewModel(
      title: 'Join Our Job Providing Mission',
      body: 'Job is the most precious for anyone can give to another person – the gift of life.',

      image: Center(
        child: Image.asset('assets/images/intro5.png'),
      ),
      decoration: const PageDecoration(
        pageColor: Colors.teal,
        titleTextStyle : TextStyle(
          fontSize: 45.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: IntroductionScreen(
          pages: Pages,
          dotsDecorator: const DotsDecorator(
            size: Size(10, 10),
            color: Colors.blue,
            activeSize: Size.square(20),
            activeColor: Colors.red,
          ),
          showDoneButton: true,
          done: const Text('Done', style: TextStyle(fontSize: 20),),
          showSkipButton: true,
          skip: const Text('Skip', style: TextStyle(fontSize: 20),),
          showNextButton: true,
          next: const Icon(Icons.arrow_forward, size: 25,),
          onDone: () => onDone(context),
          curve: Curves.bounceOut,

        ),
      ),
    );
  }
  void onDone(context){
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => UserState()));
  }
}
