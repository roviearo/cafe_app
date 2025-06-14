import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
final class Env {
  @EnviedField(varName: 'SUPABASE_URL')
  static const String supabaseUrl = _Env.supabaseUrl;
  @EnviedField(varName: 'SUPABASE_ANON_KEY')
  static const String supabaseAnonKey = _Env.supabaseAnonKey;
  @EnviedField(varName: 'WEB_CLIENT_ID')
  static const String webClientId = _Env.webClientId;
  @EnviedField(varName: 'ANDROID_CLIENT_ID')
  static const String androidClientId = _Env.androidClientId;
}
