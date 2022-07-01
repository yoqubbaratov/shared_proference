
class CreateAC{
  String fullName;
  String email;
  String password;
  String conPassword;
  String phoneNumber;

  CreateAC({required this.conPassword, required this.phoneNumber,required this.fullName, required this.email, required this.password});
  CreateAC.from({required this.conPassword,required this.phoneNumber,required this.fullName,required this.email, required this.password});

  CreateAC.fromJson(Map<String, dynamic> json)
      : fullName = json['fullName'],
        email = json['email'],
        phoneNumber = json['phoneNumber'],
        password = json['password'],
        conPassword = json['conPassword'];

  Map<String, dynamic> toJson() => {
    'fullName': fullName,
    'email': email,
    'phoneNumber': phoneNumber,
    'password': password,
    'conPassword': conPassword,
  };
}