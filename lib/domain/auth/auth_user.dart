import 'dart:convert';

class AuthUser {
    String role;
    String name;
    String ktp;
    String noHp;
    String email;

    AuthUser({
        required this.role,
        required this.name,
        required this.ktp,
        required this.noHp,
        required this.email,
    });

    factory AuthUser.fromJson(Map<String, dynamic> json) => AuthUser(
        role: json["role"],
        name: json["name"],
        ktp: json["ktp"],
        noHp: json["no_hp"],
        email: json["email"],
    );

    Map<String, dynamic> toJson() => {
        "role": role,
        "name": name,
        "ktp": ktp,
        "no_hp": noHp,
        "email": email,
    };

    factory AuthUser.fromRawJson(String str) => AuthUser.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());
}
