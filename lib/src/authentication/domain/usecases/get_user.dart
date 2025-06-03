import 'package:cafe_app/core/usecase/usecase.dart';
import 'package:cafe_app/core/utils/typedef.dart';
import 'package:cafe_app/src/authentication/domain/entities/user.dart';
import 'package:cafe_app/src/authentication/domain/repository/authentication_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user.freezed.dart';

class GetUser extends UsecaseWithParams<User, GetUserParams> {
  final AuthenticationRepository _authenticationRepository;

  GetUser(this._authenticationRepository);

  @override
  ResultFuture<User> call(GetUserParams params) =>
      _authenticationRepository.getUser(params.id);
}

@freezed
abstract class GetUserParams with _$GetUserParams {
  const factory GetUserParams(String id) = _GetUserParams;
}
