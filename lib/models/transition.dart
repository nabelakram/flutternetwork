class Transition {
  final int id;
  final String price, item;
  final DateTime dateTime;
//positional arguments
  // Transition(this.id, this.price, this.item, this.dateTime);
// optional and name argument

  // Transition({this.id, this.price, this.item, this.dateTime});

// compulsory and name argument
  Transition(
      {required this.id,
      required this.price,
      required this.item,
      required this.dateTime});

  // Transition(int id, String price, String item, DateTime dateTime) {
  //   this.id = id;
  //   this.price = price;
  //   this.item = item;
  //   this.dateTime = dateTime;
  // }
}
