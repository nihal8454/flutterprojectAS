import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class introscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('OnBoarding Screen'),
      ),
      body: IntroductionScreen(
        dotsFlex: 3,
        dotsDecorator:
         DotsDecorator(color: Colors.black, activeColor: Colors.pink,spacing:EdgeInsets.all(100),shape:BeveledRectangleBorder(borderRadius: BorderRadius.horizontal()) ),
        globalBackgroundColor: Colors.teal,
        showNextButton: true,
        next: const Text(
          'Next',
          style: TextStyle(color: Colors.pink),
        ),
        showBackButton: true,
        back: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.pink,
        ),
        // showSkipButton: true,
        // skip: Text('skip',style: TextStyle(color: Colors.pink),),
        // showDoneButton: true,
        done: const Text(
          'Done',
          style: TextStyle(color: Colors.pink),
        ),
        onDone: () {},
        pages: [
          PageViewModel(decoration: PageDecoration(pageColor: Colors.yellow),
            image: Padding(
              padding: const EdgeInsets.only(top: 56.0),
              child: Image.asset('assets/images/working.png'),
            ),
            title: 'ONBOARDING SCREEN PAGE 1',
            body: 'Body of introduction page 1',
            footer: const Text('@flutter'),
            // decoration: PageDecoration(pageColor: Colors.purple)
          ),
          PageViewModel(
              image: Padding(
                padding: const EdgeInsets.only(top: 56.0),
                child: Image.asset('assets/images/working-with-laptop.png'),
              ),
              title: 'ONBOARDING SCREEN PAGE 2',
              body: 'Body of introduction page 2',
              footer: const Text('@flutter')),
          PageViewModel(
              image: Padding(
                padding: const EdgeInsets.only(top: 56.0),
                child: Image.asset('assets/images/user-avatar.png'),
              ),
              title: 'ONBOARDING SCREEN PAGE 3',
              body: 'Body of introduction page 3',
              footer: const Text('@flutter')),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: introscreen(),
  ));
}