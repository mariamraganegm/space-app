import 'package:flutter/material.dart';
import 'home_screen.dart';
void main() {
  runApp(const SpaceApp());
}

class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ZeroScreen(),
    );
  }
}
class ZeroScreen extends StatelessWidget {
  const ZeroScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:25,bottom:10),
            child: Positioned.fill(child: Image.asset('assets/images/red_planet.png',)
            ),
          ),

          Padding(
            padding:  EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 220,),
                 Text(
                  "Explore\nThe\nUniverse",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                  ),
                                 ),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                          ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Explore",
                          style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w500),
                        ),
                        Icon(Icons.arrow_forward, color: Colors.white,fontWeight: FontWeight.w800,),
                      ],),
                  ),
                ),
              ],
            ),
          )
          ],
          ),
          );
  }
}