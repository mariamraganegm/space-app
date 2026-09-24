import 'package:flutter/material.dart';
import 'package:space_app/explore_details.dart';
class HomeButton extends StatelessWidget {
  final String planetName;
  final VoidCallback? onPrevious;
  final VoidCallback? onNext;
  final String planetTitle;
  final String planet3d;
  final String planetAbout;
  final Map planetDetails;
  const HomeButton({super.key,required this.planetName,this.onPrevious,
    this.onNext,required this.planetTitle,required this.planet3d,required this.planetAbout,required this.planetDetails});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: onPrevious,
                child: const CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 20,
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
              Text(
                planetName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                  ,
                ),
              ),
              GestureDetector(
                onTap: onNext,
                child: const CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 20,
                  child: Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              minimumSize: const Size(double.infinity, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExploreDetails(
                    planetName: planetName,
                    planetTitle: planetTitle,
                    planet3d: planet3d,
                    planetAbout: planetAbout,
                    planetDetails: planetDetails,
                  ),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Explore $planetName",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Icon(Icons.arrow_forward, color: Colors.white,size: 25,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}