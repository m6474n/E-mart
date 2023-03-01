// ignore_for_file: prefer_typing_uninitialized_variables, prefer_interpolation_to_compose_strings, avoid_print, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:p1/conponents/rounded_button.dart';
import 'package:p1/screens/register_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final PageController _controller = PageController(initialPage: 0);
  var pageIndex;

  pageViewChanged(page) {
    print('Current page is:' + page.toString());
    page = pageIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 600,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                reverse: false,
                onPageChanged: pageViewChanged,
                children: [
                  header(
                      'assets/images/chef.png',
                      'Engaging Superb\nHome Makers around',
                      "It's a platform for home makers, where they can show their cooking talent and earn revenue"),
                  header(
                      'assets/images/home-delivery.png',
                      'Foodies with Great\nExpress Delivery',
                      'Fast and easy food delivery from the best restaurant near you.'),
                  header(
                      'assets/images/schedule.png',
                      'Schedule Order to Never\nMiss a Meal',
                      "You can schedule your order if you don't wana miss any Meal on time."),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40.0,
              ),
              child: RoundedButton(
                  text: "Next",
                  onTap: () {
                    _controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  }),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterScreen()));
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ))
          ],
        ));
  }

  Widget header(image, title, subtitle) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(image),
          // height: 150,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: const TextStyle(
              color: Colors.black87,
              fontSize: 24,
              fontFamily: 'OpenSans-bold',
              // fontWeight: FontWeight.bold,
              height: 1.2),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.grey, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
