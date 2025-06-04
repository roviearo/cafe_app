// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  User({
    required this.id,
    this.updatedAt,
    this.username,
    required this.fullName,
    required this.avatarUrl,
    this.website,
    required this.isStaff,
  });

  final String id;
  final DateTime? updatedAt;
  final String? username;
  final String fullName;
  final String avatarUrl;
  final String? website;
  final bool isStaff;

  User.empty()
    : this(
        id: '',
        updatedAt: DateTime(2000),
        username: '',
        fullName: '',
        avatarUrl: '',
        website: '',
        isStaff: false,
      );
}
