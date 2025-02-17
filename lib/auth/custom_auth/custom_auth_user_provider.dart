import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class MiNominaAuthUser {
  MiNominaAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<MiNominaAuthUser> miNominaAuthUserSubject =
    BehaviorSubject.seeded(MiNominaAuthUser(loggedIn: false));
Stream<MiNominaAuthUser> miNominaAuthUserStream() => miNominaAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
