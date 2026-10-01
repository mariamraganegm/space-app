import 'package:flutter/material.dart';

class PlanetDetails extends StatelessWidget {
  final Map planetDetails;

  const PlanetDetails({
    super.key,
    required this.planetDetails,
  });

  Widget _buildDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "$title :$value",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            height: 1.4,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDetailRow(
            "Distance from Sun (km)",
            planetDetails["Distance from Sun (km)"] ??"",
          ),
          _buildDetailRow(
            "Length of Day (hours)",
            planetDetails["Length of Day (hours)"] ?? "",
          ),
          _buildDetailRow(
            "Orbital Period (Earth years)",
            planetDetails["Orbital Period (Earth years)"] ?? "",
          ),
          _buildDetailRow(
            "Radius (km)",
            planetDetails["Radius (km)"] ?? "",
          ),
          _buildDetailRow(
            "Mass (kg)",
            planetDetails["Mass (kg)"] ?? "",
          ),
          _buildDetailRow(
            "Gravity (m/s²)",
            planetDetails["Gravity (m/s²)"] ?? "",
          ),
          _buildDetailRow(
            "Surface Area (km²)",
            planetDetails["Surface Area (km²)"] ?? "",
          ),
        ],
      ),
    );
  }
}