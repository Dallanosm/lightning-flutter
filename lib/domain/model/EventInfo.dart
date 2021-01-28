class EventInfo {
  final title;
  final date;

  EventInfo({this.title, this.date});

  @override
  String toString() {
    return "$title - $date";
  }
}
