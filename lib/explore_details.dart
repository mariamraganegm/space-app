import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:space_app/planetDetails.dart';
class ExploreDetails extends StatelessWidget {
  final String planetName;
  final String planetTitle;
  final String planet3d;
  final String planetAbout;
  final Map planetDetails;
  const ExploreDetails({super.key,required this.planetName,required this.planetTitle,required this.planet3d,required this.planetAbout,required this.planetDetails});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 200,child: Stack(
              children: [
                Positioned.fill(child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/top_screen.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.2),
                          Colors.black.withOpacity(0.7),
                          Colors.black,
                        ],
                    ),
                  ),
                )),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Positioned(
                    left: 16,
                    right: 16,
                    child: Row(
                      children: [
                        GestureDetector(
                             onTap: () {
                               Navigator.pop(context);
                             },
                             child: const CircleAvatar(
                               backgroundColor: Colors.red,
                               radius: 24,
                               child: Icon(
                                 Icons.arrow_back,
                                 color: Colors.white,
                                 size: 24,
                                 fontWeight:FontWeight.w400,
                               ),
                             ),
                           ),
                        Expanded(
                          child: Text(
                            planetName,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(width: 40,),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "$planetName : $planetTitle",
                      style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                    ),
                    ),
                  ),
                ),
          ],
        ),
      ),
            SizedBox(
              height: 300,
              child: Flutter3DViewer(
                key: ValueKey(planet3d),
                src: planet3d,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("About",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color:Colors.white,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15,right: 13,left: 13),
              child: Text(
                planetAbout,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  height: 1.5,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
             PlanetDetails(
                planetDetails: planetDetails,
              ),

            const SizedBox(height: 20),

        ],
      ),
      ),
    ),
    );
  }
}