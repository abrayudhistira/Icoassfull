class UserProfile {
  final String username;
  final String
      password; // Note: For security reasons, consider not fetching passwords in this manner
  final String notelpon;
  final String tanggalLahir;
  final String jeniskelamin;
  final String alamat;

  UserProfile({
    required this.username,
    required this.password,
    required this.notelpon,
    required this.tanggalLahir,
    required this.jeniskelamin,
    required this.alamat,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      username: json['username'],
      password: json['password'],
      notelpon: json['notelpon'],
      tanggalLahir: json['tanggal_lahir'],
      jeniskelamin: json['jeniskelamin'],
      alamat: json['alamat'],
    );
  }
}
