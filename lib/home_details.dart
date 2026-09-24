class PlanetsModel {
  final String planetImage;
  final String planetName;
  final String planetTitle;
  final String planet3d;
  final String planetAbout;
  final Map planetDetails;

  const PlanetsModel({
    required this.planetImage,
    required this.planetName,
    required this.planetTitle,
    required this.planet3d,
    required this.planetAbout,
    required this.planetDetails,
  });
}

const List planets = [
  PlanetsModel(
    planetImage: "assets/images/sun.png",
    planetName: "Sun",
    planetTitle: "Our Solar System's Star",
    planet3d: "assets/models/sun.glb",
    planetAbout:
    "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
    planetDetails: {
      "Distance from Sun (km)": "0",
      "Length of Day (hours)": "0",
      "Orbital Period (Earth years)": "0",
      "Radius (km)": "695,700",
      "Mass (kg)": "1.989 × 10³⁰",
      "Gravity (m/s²)": "274",
      "Surface Area (km²)": "6.09 × 10¹²",
    },
  ),
  PlanetsModel(
    planetImage: "assets/images/mercury.png",
    planetName: "Mercury",
    planetTitle: "The Closest Planet",
    planet3d: "assets/models/mercury.glb",
    planetAbout:
    "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
    planetDetails: {
      "Distance from Sun (km)": "57,909,227",
      "Length of Day (hours)": "1,407.60",
      "Orbital Period (Earth years)": "0.24",
      "Radius (km)": "2,439.70",
      "Mass (kg)": "3.301 × 10²³",
      "Gravity (m/s²)": "3.7",
      "Surface Area (km²)": "7.48 × 10⁷",
    },
  ),
  PlanetsModel(
    planetImage: "assets/images/venus.png",
    planetName: "Venus",
    planetTitle: "Earth's Toxic Twin",
    planet3d: "assets/models/venus.glb",
    planetAbout:
    "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.",
    planetDetails: {
      "Distance from Sun (km)": "108,209,072",
      "Length of Day (hours)": "5,832.20",
      "Orbital Period (Earth years)": "0.62",
      "Radius (km)": "6,051.80",
      "Mass (kg)": "4.867 × 10²⁴",
      "Gravity (m/s²)": "8.87",
      "Surface Area (km²)": "4.60 × 10⁸",
    },
  ),
  PlanetsModel(
    planetImage: "assets/images/earth.png",
    planetName: "Earth",
    planetTitle: "Our Blue Marble",
    planet3d: "assets/models/earth.glb",
    planetAbout:
    "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
    planetDetails: {
      "Distance from Sun (km)": "149,598,026",
      "Length of Day (hours)": "23.93",
      "Orbital Period (Earth years)": "1",
      "Radius (km)": "6,371",
      "Mass (kg)": "5.972 × 10²⁴",
      "Gravity (m/s²)": "9.81",
      "Surface Area (km²)": "5.10 × 10⁸",
    },
  ),
  PlanetsModel(
    planetImage: "assets/images/mars.png",
    planetName: "Mars",
    planetTitle: "The Red Planet",
    planet3d: "assets/models/mars.glb",
    planetAbout:
    "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
    planetDetails: {
      "Distance from Sun (km)": "227,943,824",
      "Length of Day (hours)": "24.62",
      "Orbital Period (Earth years)": "1.88",
      "Radius (km)": "3,389.50",
      "Mass (kg)": "6.39 × 10²³",
      "Gravity (m/s²)": "3.71",
      "Surface Area (km²)": "1.45 × 10⁸",
    },
  ),
  PlanetsModel(
    planetImage: "assets/images/jupiter.png",
    planetName: "Jupiter",
    planetTitle: "The Gas Giant",
    planet3d: "assets/models/jupiter.glb",
    planetAbout:
    "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
    planetDetails: {
      "Distance from Sun (km)": "778,547,669",
      "Length of Day (hours)": "9.92",
      "Orbital Period (Earth years)": "11.86",
      "Radius (km)": "69,911",
      "Mass (kg)": "1.898 × 10²⁷",
      "Gravity (m/s²)": "24.79",
      "Surface Area (km²)": "6.21 × 10¹⁵",
    },
  ),
  PlanetsModel(
    planetImage: "assets/images/saturn.png",
    planetName: "Saturn",
    planetTitle: "The Ringed Planet",
    planet3d: "assets/models/saturn.glb",
    planetAbout:
    "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.",
    planetDetails: {
      "Distance from Sun (km)": "1,426,666,422",
      "Length of Day (hours)": "10.66",
      "Orbital Period (Earth years)": "29.46",
      "Radius (km)": "58,232",
      "Mass (kg)": "5.683 × 10²⁶",
      "Gravity (m/s²)": "10.44",
      "Surface Area (km²)": "4.27 × 10¹⁵",
    },
  ),
  PlanetsModel(
    planetImage: "assets/images/uranus.png",
    planetName: "Uranus",
    planetTitle: "The Tilted Planet",
    planet3d: "assets/models/uranus.glb",
    planetAbout:
    "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
    planetDetails: {
      "Distance from Sun (km)": "2,870,990,000",
      "Length of Day (hours)": "17.24",
      "Orbital Period (Earth years)": "84.01",
      "Radius (km)": "25,362",
      "Mass (kg)": "8.681 × 10²⁵",
      "Gravity (m/s²)": "8.69",
      "Surface Area (km²)": "8.1 × 10¹⁵",
    },
  ),
  PlanetsModel(
    planetImage: "assets/images/neptune.png",
    planetName: "Neptune",
    planetTitle: "The Distant World",
    planet3d: "assets/models/neptune.glb",
    planetAbout:
    "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
    planetDetails: {
      "Distance from Sun (km)": "4,498,252,900",
      "Length of Day (hours)": "16.11",
      "Orbital Period (Earth years)": "164.8",
      "Radius (km)": "24,622",
      "Mass (kg)": "1.024 × 10²⁶",
      "Gravity (m/s²)": "11.15",
      "Surface Area (km²)": "7.65 × 10¹⁵",
    },
  ),
];