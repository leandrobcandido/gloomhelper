class Scenario {
  int number;
  String name;
  bool available;

  Scenario({
    required this.number,
    required this.name,
    this.available = false
  });
}