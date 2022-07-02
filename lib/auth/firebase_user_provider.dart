import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MainAppFirebaseUser {
  MainAppFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

MainAppFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MainAppFirebaseUser> mainAppFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<MainAppFirebaseUser>(
        (user) => currentUser = MainAppFirebaseUser(user));
