import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/features/auth/data/repos/social_media_auth/social_madia_auth_repo.dart';
import 'package:pollo/features/auth/presentation/manager/social_media_auth/social_media_auth_state.dart';

class SocialMadiaCubit extends Cubit<SocialMediaAuthState> {
  final SocialMadiaAuthRepo socialMadiaAuthRepo;

  SocialMadiaCubit({required this.socialMadiaAuthRepo})
      : super(SocialMediaAuthInitial());

  Future<void> loginWithGoogle() async {
    emit(SocialMediaAuthLoading());
    try {
      await socialMadiaAuthRepo.signInWithGoogle();
      emit(SocialMediaAuthSuccess());
    } catch (e) {
      emit(SocialMediaAuthFailure(e.toString()));
    }
  }

  Future<void> loginWithFacebook() async {
    emit(SocialMediaAuthLoading());
    try {
      await socialMadiaAuthRepo.signInWithFacebook();
      emit(SocialMediaAuthSuccess());
    } catch (e) {
      emit(SocialMediaAuthFailure(e.toString()));
    }
  }
}
