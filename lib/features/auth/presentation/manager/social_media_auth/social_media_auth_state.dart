abstract class SocialMediaAuthState {}

class SocialMediaAuthInitial extends SocialMediaAuthState {}

class SocialMediaAuthLoading extends SocialMediaAuthState {}

class SocialMediaAuthSuccess extends SocialMediaAuthState {}

class SocialMediaAuthFailure extends SocialMediaAuthState {
  final String errorMessage;
  SocialMediaAuthFailure(this.errorMessage);
}
