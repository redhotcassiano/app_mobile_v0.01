import 'package:app_mobile/models/consult.dart';

class ListConsult {

  static final List<Consult> consults = [
    const Consult(
      id: "1",
      name: "Mars",
      location: "Milkyway Galaxy",
      distance: "54.6m Km",
      gravity: "3.711 m/s ",
      description: "Lorem ipsum...",
      image: "assets/img/mars.png",
    ),
    const Consult(
      id: "2",
      name: "Neptune",
      location: "Milkyway Galaxy",
      distance: "54.6m Km",
      gravity: "3.711 m/s ",
      description: "Lorem ipsum...",
      image: "assets/img/neptune.png",
    ),
    const Consult(
      id: "3",
      name: "Moon",
      location: "Milkyway Galaxy",
      distance: "54.6m Km",
      gravity: "3.711 m/s ",
      description: "Lorem ipsum...",
      image: "assets/img/moon.png",
    ),
    const Consult(
      id: "4",
      name: "Earth",
      location: "Milkyway Galaxy",
      distance: "54.6m Km",
      gravity: "3.711 m/s ",
      description: "Lorem ipsum...",
      image: "assets/img/earth.png",
    ),
    const Consult(
      id: "5",
      name: "Mercury",
      location: "Milkyway Galaxy",
      distance: "54.6m Km",
      gravity: "3.711 m/s ",
      description: "Lorem ipsum...",
      image: "assets/img/mercury.png",
    ),
  ];

  static Consult getPlanetById(id) {
    return consults
        .where((p) => p.id == id)
        .first;
  }
}