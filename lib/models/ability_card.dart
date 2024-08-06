class AbilityCard {
  int number;
  String level;
  String name;
  int initiative;
  bool available;

  AbilityCard({
    required this.number,
    required this.level,
    required this.name,
    required this.initiative,
    this.available = false
  });
}