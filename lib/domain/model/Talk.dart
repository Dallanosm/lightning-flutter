class Talk {
  final String title;
  final int capacity;

  Talk({this.title, this.capacity});

  @override
  String toString() {
    return "$title - $capacity";
  }
}
