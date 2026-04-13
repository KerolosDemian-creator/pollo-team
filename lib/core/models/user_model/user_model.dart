class UserModel {
  final int id;
  final String firstName;
  final String lastName;
  final String phone;
  final String email;
  final String username;
  final double reviewsAvgRating;
  final String createdAt;
  final String? image;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.email,
    required this.username,
    required this.reviewsAvgRating,
    required this.createdAt,
    this.image,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      phone: json['phone'],
      email: json['email'],
      username: json['username'],
      reviewsAvgRating: (json['reviews_avg_rating'] as num).toDouble(),
      createdAt: json['created_at'],
      image: json['image'],
    );
  }
}
