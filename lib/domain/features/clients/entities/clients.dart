class Clients {
  String guid;
  String first;
  String last;
  String street;
  String city;
  int zip;

  Clients({
    this.guid,
    this.first,
    this.last,
    this.street,
    this.city,
    this.zip,
  });

  Clients copyWith({
    String guid,
    String first,
    String last,
    String street,
    String city,
    int zip,
  }) {
    return Clients(
      guid: guid ?? this.guid,
      first: first ?? this.first,
      last: last ?? this.last,
      street: street ?? this.street,
      city: city ?? this.city,
      zip: zip ?? this.zip,
    );
  }
}
