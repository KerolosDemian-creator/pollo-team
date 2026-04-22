import 'package:firebase_auth/firebase_auth.dart';

abstract class SocialMadiaAuthRepo {
  Future<UserCredential> signInWithGoogle();
  Future<UserCredential> signInWithFacebook();
}
