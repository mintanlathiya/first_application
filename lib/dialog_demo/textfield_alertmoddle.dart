class User {
  String? name, surName, emailId, gender, url;
  int? age, mobileNumber;
  List? hobby;
  double? salary;
  User({
    this.name,
    this.surName,
    this.age,
    this.mobileNumber,
    this.emailId,
    this.gender,
    this.url,
    this.hobby,this.salary,
  });
  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json['name'],
        age: json['age'],
        surName: json['surName'],
        mobileNumber: json['mobileNumber'],
        emailId: json['emailId'],
        gender: json['gender'],
        url: json['url'],
        hobby: json['hobby'],
          salary: json['salary'],
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (name != null) {
      data['name'] = name;
    }
    if (surName != null) {
      data['surName'] = surName;
    }
    if (age != null) {
      data['age'] = age;
    }
    if (mobileNumber != null) {
      data['mobileNumber'] = mobileNumber;
    }
    if (emailId != null) {
      data['emailId'] = emailId;
    }
    if (gender != null) {
      data['gender'] = gender;
    }
    if (url != null) {
      data['url'] = url;
    }
    if (hobby != null) {
      data['hobby'] = hobby;
    }
    if (salary != null) {
      data['salary'] = salary;
    }
    return data;
  }
}
