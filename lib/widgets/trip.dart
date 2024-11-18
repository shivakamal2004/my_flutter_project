class Trip {
  final String title;
  final DateTime date;
  final String status;
  final String details;

  Trip({
    required this.title,
    required this.date,
    this.status = 'Pending',
    this.details = '',
  });

  Map<String, dynamic> toJson() => {
    'title': title,
    'date': date.toIso8601String(),
    'status': status,
    'details': details,
  };

  factory Trip.fromJson(Map<String, dynamic> json) {
    return Trip(
      title: json['title'],
      date: DateTime.parse(json['date']),
      status: json['status'],
      details: json['details'],
    );
  }
}
