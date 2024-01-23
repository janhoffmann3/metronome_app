/// ### TempoTranscription class
///
/// Correctly assigns italian transcriptions to a specific tempo
///
///
class TempoTranscription {
  String getTranscription(int tempo) {
    switch (tempo) {
      case < 40:
        return "Adagissimo";
      case < 68:
        return "Adagio";
      case < 108:
        return "Andante";
      case < 120:
        return "Moderato";
      case < 156:
        return "Allegro";
      case < 176:
        return "Vivace";
      case <= 200:
        return "Presto";
      case > 200:
        return "Prestissimo";
      default:
        return "What is that??";
    }
  }
}
