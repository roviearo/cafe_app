import 'package:cafe_app/src/authentication/data/models/user_model.dart';
import 'package:cafe_app/src/authentication/domain/entities/user.dart';

extension UserModelMapper on UserModel {
  User toEntity() => User(
    id: id,
    updatedAt: updatedAt,
    username: username,
    fullName: fullName,
    avatarUrl: avatarUrl,
    website: website,
    isStaff: isStaff,
  );
}

extension UserMapper on User {
  UserModel toModel() => UserModel(
    id: id,
    fullName: fullName,
    avatarUrl: avatarUrl,
    isStaff: isStaff,
  );
}
