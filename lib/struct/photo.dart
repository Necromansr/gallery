class Photo {
  final String title;
  final String firstName;
  final String lastName;
  final String small;
  final String full;

  Photo({this.title, this.firstName, this.lastName, this.small, this.full});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
        title: json['user']['name'] as String,
        firstName: json['user']['first_name'] as String,
        lastName: json['user']['last_name'] as String,
        small: json['urls']['small'] as String,
        full: json['urls']['full'] as String);
  }
}