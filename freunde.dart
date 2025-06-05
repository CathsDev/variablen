import "dart:io";

//Enum für die Reiseroute
enum Transportmittel { auto, zug, fahrrad, bus }

void main() {
  // Reiseroute mit Distanzen
  Map<String, int> reiseroute = {
    "Max": 120,
    "Peter": 90,
    "Anna": 270,
    "Fritz": 560,
  };

  // Auswahl des Transportmittels
  Transportmittel mittel = Transportmittel.fahrrad; // Standardwert
  // Geschwindigekeit fest
  int geschwindigkeit = 0; // km/h

  if (mittel == Transportmittel.auto) {
    geschwindigkeit = 90; // km/h für Auto
  } else if (mittel == Transportmittel.zug) {
    geschwindigkeit = 120; // km/h für Zug
  } else if (mittel == Transportmittel.fahrrad) {
    geschwindigkeit = 20; // km/h für Fahrrad
  } else if (mittel == Transportmittel.bus) {
    geschwindigkeit = 60; // km/h für Bus
  }

  //Eingabe der Geschwindigkeit
  print("Bitte gib die Geschwindigkeit in km/h ein:");
  String? eingabe = stdin.readLineSync();
  geschwindigkeit = int.parse(eingabe ?? "90");

  //Fahrzeitberechnung
  double zeitMax = reiseroute["Max"]! / geschwindigkeit; // Zeit für Max
  double zeitPeter = reiseroute["Peter"]! / geschwindigkeit; // Zeit für Peter
  double zeitAnna = reiseroute["Anna"]! / geschwindigkeit; // Zeit für Anna
  double zeitFritz = reiseroute["Fritz"]! / geschwindigkeit; // Zeit für Fritz

  //Gesamtdistanz und Fahrzeit
  int gesamtKm =
      reiseroute["Max"]! +
      reiseroute["Peter"]! +
      reiseroute["Anna"]! +
      reiseroute["Fritz"]!; // Gesamtdistanz
  double gesamtZeit = zeitMax + zeitPeter + zeitAnna + zeitFritz;

  //Durchschnittswerte
  //Durchschnittliche Entfernung aller Freunde
  double durchschnittKm = gesamtKm / reiseroute.length;
  //Durchschnittliche Gesamtzeit aller Freunde
  double gesamtZeitFreunde = gesamtZeit / reiseroute.length;

  //Ausgabe der Ergebnisse
  print("Deine Reiseroute bei $geschwindigkeit km/h:");
  print(
    "Transportmittel: ${mittel.name[0].toUpperCase() + mittel.name.substring(1)}",
  );
  print("1. Max: ${reiseroute["Max"]} km, Zeit: ${zeitMax} Stunden");
  print(
    "2. Peter: ${reiseroute["Peter"]} km, Zeit: ${zeitPeter.toStringAsFixed(2)} Stunden",
  );
  print(
    "3. Anna: ${reiseroute["Anna"]} km, Zeit: ${zeitAnna.toStringAsFixed(2)} Stunden",
  );
  print(
    "4. Fritz: ${reiseroute["Fritz"]} km, Zeit: ${zeitFritz.toStringAsFixed(2)} Stunden",
  );
  print("Gesamtdistanz: $gesamtKm km");
  print("Gesamtfahrzeit: ${gesamtZeit.toStringAsFixed(2)} Stunden");
  print(
    "Durchschnittliche Entfernung aller Freunde: ${durchschnittKm.toStringAsFixed(2)}",
  );
  print(
    "Durchschnittliche Fahrzeit aller Freunde: ${gesamtZeitFreunde.toStringAsFixed(2)}",
  );
}
