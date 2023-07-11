class User {
  String? firstName, emailId, gender, stream, url;
  int? age;
  double? salary;

  List? hobby;
  User(
      {this.firstName,
      this.emailId,
      this.age,
      this.gender,
      this.hobby,
      this.salary,
      this.url,
      this.stream});
  factory User.fromJson(Map<String, dynamic> json) => User(
        firstName: json['firstName'],
        emailId: json['emailId'],
        age: json['age'],
        gender: json['gender'],
        hobby: List.from(json['hobby'].map((e) => e)).toList(),
        salary: json['salary'],
        url: json['url'],
        stream: json['stream'],
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (firstName != null) {
      data['firstName'] = firstName;
    }
    if (emailId != null) {
      data['emailId'] = emailId;
    }
    if (age != null) {
      data['age'] = age;
    }
    if (url != null) {
      data['url'] = url;
    }
    if (gender != null) {
      data['gender'] = gender;
    }
    if (hobby != null) {
      data['hobby'] = List.from(hobby!.map((e) => e)).toList();
    }
    if (salary != null) {
      data['salary'] = salary;
    }
    if (stream != null) {
      data['stream'] = stream;
    }

    return data;
  }
}
