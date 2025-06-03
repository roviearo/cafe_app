import 'dart:async';
import 'package:flutter/foundation.dart';

class GoRouterRefreshBloc extends ChangeNotifier {
  late final StreamSubscription _subscription;

  GoRouterRefreshBloc(Stream<dynamic> stream) {
    _subscription = stream.listen((_) {
      notifyListeners(); // ✅ Triggers GoRouter to re-evaluate redirect
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
