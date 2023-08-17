class User{
  final String role;
  final String name;
  final String ktp;
  final String noHp;
  final String email;

  User({required this.role, required this.name, required this.ktp, this.noHp = "-", this.email = "-"});
}