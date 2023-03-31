import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class LifeFit2FirebaseUser {
  LifeFit2FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

LifeFit2FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<LifeFit2FirebaseUser> lifeFit2FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<LifeFit2FirebaseUser>(
      (user) {
        currentUser = LifeFit2FirebaseUser(user);
        return currentUser!;
      },
    );
