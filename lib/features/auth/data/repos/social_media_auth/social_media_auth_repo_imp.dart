import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:pollo/features/auth/data/repos/social_media_auth/social_madia_auth_repo.dart';

class SocialAuthRepositoryImp implements SocialMadiaAuthRepo {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<UserCredential> signInWithFacebook() async {
    final LoginResult result = await FacebookAuth.instance.login();

    if (result.status == LoginStatus.success) {
      final OAuthCredential credential =
          FacebookAuthProvider.credential(result.accessToken!.tokenString);
      return await _auth.signInWithCredential(credential);
    } else if (result.status == LoginStatus.cancelled) {
      throw 'تم إلغاء تسجيل الدخول';
    } else {
      throw result.message ?? 'فشل تسجيل الدخول بفيسبوك';
    }
  }

  @override
  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    if (googleAuth != null) {
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      return await _auth.signInWithCredential(credential);
    } else {
      throw 'حدث خطأ أثناء الحصول على بيانات جوجل';
    }
  }
}
