class RequestConfirmation {
  final String userName;
  final String login;
  final String password;

  RequestConfirmation({
    required this.userName,
    required this.login,
    required this.password,
  });

  Map<String, dynamic> toApi() {
    return {
      'user_name': userName,
      'login': login,
      'password': password,
    };
  }
}
