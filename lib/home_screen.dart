import 'package:flutter/material.dart';
import 'package:space_app/home_button.dart';
import 'package:space_app/home_details.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
    appBar:AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Explore",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black,
                Colors.black26,
                Colors.transparent,
              ],
            ),
          ),
        ),
      ),
      body:  Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/top_screen.jpg',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
              const Positioned(
                bottom: .1,
                left: 16,
                right: 16,
                child: Text(
                  "Which planet\nwould you like to explore?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: (index){
                setState(() {
                  _currentIndex=index;
                });
              }
              ,
              itemBuilder: (context, index) {
              return Column(
                children: [
                 Image.asset(planets[index].planetImage,width: 300,height: 300,),
                ],
              );
            },
              itemCount: planets.length,
            ),
          ),
          HomeButton(
            planetName: planets[_currentIndex].planetName,
            onPrevious: _currentIndex > 0
                ? () {
              _pageController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            } : null,
            onNext: _currentIndex < planets.length - 1
                ? () {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            } : null,
            planetTitle:  planets[_currentIndex].planetTitle,
            planet3d: planets[_currentIndex].planet3d,
             planetAbout:  planets[_currentIndex].planetAbout,
            planetDetails: planets[_currentIndex].planetDetails,
          ),
        ],
      ),
    );
  }
}