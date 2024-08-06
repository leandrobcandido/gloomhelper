class AttackCard {
  int number;
  String imagePath;
  int quantity;

  AttackCard({
    required this.number,
    required this.imagePath,
    this.quantity = 0
  });
}