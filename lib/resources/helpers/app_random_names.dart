import 'dart:math';

/// ### RandomNames class
///
/// Generates random names for new users
///
///
class RandomNames {
  final List<String> musicalNames = [
    "Melodic Harmony",
    "Rhythmic Echo",
    "Sonata Serenity",
    "Crescendo Cascade",
    "Tempo Tranquil",
    "Allegro Breeze",
    "Vibrato Dawn",
    "Staccato Moon",
    "Cadence Ember",
    "Harmony Hush",
    "Adagio Zephyr",
    "Lyric Lullaby",
    "Forte Aurora",
    "Allegretto Blaze",
    "Arpeggio Whisper",
    "Syncopation Starlight",
    "Jazzical Frost",
    "Sforzando Gale",
    "Cantabile Gleam",
    "Ritardando Frostbite",
  ];

  String getRandomName() {
    // Create a Random object
    Random random = Random();

    // Generate a random index within the range of the list
    int randomIndex = random.nextInt(musicalNames.length);

    // Return the random name from the list
    return musicalNames[randomIndex];
  }
}
