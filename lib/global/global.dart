import 'package:galaxy_planets/model/model.dart';

class Global {
  static List<PlanetsModel> planet = [
    PlanetsModel(
        name: "Mars",
        distanceFromSun: '227.9 million km',
        distanceFromEarth: '109.21 million km',
        surfaceGravity: "3.71m/s²",
        image: "assets/images/mars.png",
        overview:
            "Mars is the fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere. Mars is also a dynamic planet with seasons, polar ice caps, canyons, extinct volcanoes, and evidence that it was even more active in the past."),
    PlanetsModel(
      name: "Mercury",
      distanceFromSun: '58 million km',
      distanceFromEarth: '156.22 million km',
      surfaceGravity: "3.70m/s²",
      image: "assets/images/mercury.png",
      overview:
          "The smallest planet in our solar system and nearest to the Sun, Mercury is only slightly larger than Earth's Moon.The Latest Full Moon Guide: January - February 2022 From the surface of Mercury, the Sun would appear more than three times as large as it does when viewed from Earth, and the sunlight would be as much as seven times brighter.",
    ),
    PlanetsModel(
      name: "Jupiter",
      distanceFromSun: '108.2 million km',
      distanceFromEarth: '597 million km',
      surfaceGravity: "8.87m/s²",
      image: "assets/images/jupiter.png",
      overview:
          "Jupiter is the fifth planet from our Sun and is, by far, the largest planet in the solar system – more than twice as massive as all the other planets combined. Jupiter's stripes and swirls are actually cold, windy clouds of ammonia and water, floating in an atmosphere of hydrogen and helium. ",
    ),
    PlanetsModel(
      name: "Uranus",
      distanceFromSun: '108.2 million km',
      distanceFromEarth: '2.8128 million km',
      surfaceGravity: "8.87m/s²",
      image: "assets/images/uranus.png",
      overview:
          "The seventh planet from the Sun with the third largest diameter in our solar system, Uranus is very cold and windy. The ice giant is surrounded by 13 faint rings and 27 small moons as it rotates at a nearly 90-degree angle from the plane of its orbit.",
    ),
    PlanetsModel(
      name: "Neptune",
      distanceFromSun: '108.2 million km',
      distanceFromEarth: '4.3381 billion km',
      surfaceGravity: "8.87m/s²",
      image: "assets/images/neptune.png",
      overview:
          "Triton (not to be confused with Saturn's moon, Titan), is far and away the largest of Neptune's satellites. Dutch-American astronomer Gerard Kuiper (for whom the Kuiper Belt was named) found Neptune's third-largest moon, Nereid, in 1949.",
    ),
    PlanetsModel(
      name: "Venus",
      distanceFromSun: '256.63 million km',
      distanceFromEarth: '4.3381 billion km',
      surfaceGravity: "8.87m/s²",
      image: "assets/images/venus.png",
      overview:
          """Because it’s so bright and easy to see in the sky, Venus has played a role in popular culture since ancient times, inspiring writing and song:It was called the most beautiful star in the sky by Homer, author of "The Iliad" and "The Odyssey" – two of the oldest and most important works in Greek literature.More recently, Venus became a popular venue for 20th-century science fiction writers, including Edgar Rice Burroughs (“Pirates of Venus,” 1934); Arthur C. Clarke (“Before Eden,” 1961); and C.S. Lewis (“Perelandra,” 1943).""",
    ),
    PlanetsModel(
      name: "Earth",
      distanceFromSun: '108.2 million km',
      distanceFromEarth: '0',
      surfaceGravity: "8.87m/s²",
      image: "assets/images/earth.png",
      overview:
          "Earth is the third planet from the Sun and the only astronomical object known to harbor life. While large volumes of water can be found throughout the Solar System, only Earth sustains liquid surface water.",
    ),
  ];
}
