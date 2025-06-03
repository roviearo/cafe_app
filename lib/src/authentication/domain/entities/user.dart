class User {
  User({
    required this.id,
    this.updatedAt,
    this.username,
    required this.fullName,
    required this.avatarUrl,
    this.website,
  });

  final String id;
  final DateTime? updatedAt;
  final String? username;
  final String fullName;
  final String avatarUrl;
  final String? website;

  User.empty()
    : this(
        id: '',
        updatedAt: DateTime(2000),
        username: '',
        fullName: '',
        avatarUrl: '',
        website: '',
      );
}
