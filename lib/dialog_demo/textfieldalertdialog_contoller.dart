import 'package:first_application/dialog_demo/textfield_alertmoddle.dart';
import 'package:flutter/material.dart';

class TextAlertController {
  static List<User> userData = [];
  static int selectedIndex = 0;
  static String gender = 'gender', male = 'male', feMale = 'feMale';
  static bool isCricket = false, isSinging = false;
  static List selectedHobbylist = [];
  static double selectedSalary = 10000;

  static GlobalKey<FormState> key = GlobalKey<FormState>();
  static GlobalKey<FormState> keyUpdate = GlobalKey<FormState>();

  static TextEditingController txtNameEditingController =
      TextEditingController();
  static TextEditingController txtUpdateNameEditingController =
      TextEditingController();
  static TextEditingController txtSurNameEditingController =
      TextEditingController();
  static TextEditingController txtUpdateSurnameEditingController =
      TextEditingController();
  static TextEditingController txtAgeEditingController =
      TextEditingController();
  static TextEditingController txtUpdateAgeEditingController =
      TextEditingController();
  static TextEditingController txtMobileEditingController =
      TextEditingController();
  static TextEditingController txtUpdateMobileEditingController =
      TextEditingController();
  static TextEditingController txtEmailEditingController =
      TextEditingController();
  static TextEditingController txtUpdateEmailEditingController =
      TextEditingController();
  static TextEditingController txtUrlEditingController =
      TextEditingController();
  static TextEditingController txtUpdateUrlEditingController =
      TextEditingController();

  static void clearMethod() {
    txtNameEditingController.clear();
    txtSurNameEditingController.clear();
    txtAgeEditingController.clear();
    txtMobileEditingController.clear();
    txtEmailEditingController.clear();
    txtUrlEditingController.clear();
    gender = 'gender';
    selectedHobbylist.clear();
    isCricket = false;
    isSinging = false;
    selectedSalary = 10000;
  }

  static void clearUpDateMethod() {
    txtUpdateNameEditingController.clear();
    txtUpdateSurnameEditingController.clear();
    txtUpdateAgeEditingController.clear();
    txtUpdateMobileEditingController.clear();
    txtUpdateEmailEditingController.clear();
    txtUpdateUrlEditingController.clear();
    gender = 'gender';
    selectedHobbylist.clear();
    isCricket = false;
    isSinging = false;
    selectedSalary = 10000;
  }

  static void addUser() {
    int ageValue = 0, mobileValue = 0;
    try {
      ageValue = int.parse(txtAgeEditingController.text);
      mobileValue = int.parse(txtMobileEditingController.text);
    } catch (e) {
      ageValue = 0;
      mobileValue = 0;
    }

    if (key.currentState!.validate()) {
      if (isCricket == true) {
        selectedHobbylist.add('Cricket');
      }
      if (isSinging == true) {
        selectedHobbylist.add('Singing');
      }

      userData.add(
        User.fromJson(
          {
            'name': txtNameEditingController.text,
            'surName': txtSurNameEditingController.text,
            'age': ageValue,
            'mobileNumber': mobileValue,
            'emailId': txtEmailEditingController.text,
            'gender': gender,
            'url': txtUrlEditingController.text,
            'hobby': List.from(selectedHobbylist.map((e) => e)),
            'salary': selectedSalary,
          },
        ),
      );
    }
  }

  static void updateUserDetail() {
    if (isCricket == true) {
      selectedHobbylist.add('Cricket');
    }
    if (isSinging == true) {
      selectedHobbylist.add('Singing');
    }
    userData[selectedIndex].name = txtUpdateNameEditingController.text;
    userData[selectedIndex].surName = txtUpdateSurnameEditingController.text;
    userData[selectedIndex].age = int.parse(txtUpdateAgeEditingController.text);
    userData[selectedIndex].mobileNumber =
        int.parse(txtUpdateMobileEditingController.text);
    userData[selectedIndex].emailId = txtUpdateEmailEditingController.text;
    userData[selectedIndex].gender = gender;
    userData[selectedIndex].url = txtUpdateUrlEditingController.text;
    userData[selectedIndex].hobby = List.from(selectedHobbylist.map((e) => e));
    userData[selectedIndex].salary = selectedSalary;
  }

  static void onTapUserData() {
    txtUpdateNameEditingController.text = userData[selectedIndex].name!;
    txtUpdateSurnameEditingController.text = userData[selectedIndex].surName!;
    txtUpdateAgeEditingController.text =
        userData[selectedIndex].age!.toString();
    txtUpdateMobileEditingController.text =
        userData[selectedIndex].mobileNumber!.toString();
    txtUpdateEmailEditingController.text = userData[selectedIndex].emailId!;
    gender = userData[selectedIndex].gender!;
    txtUrlEditingController.text = userData[selectedIndex].url!;
    selectedHobbylist = userData[selectedIndex].hobby!.map((e) => e).toList();
    if (userData[selectedIndex].hobby!.contains('Cricket')) {
      isCricket = true;
    }
    if (userData[selectedIndex].hobby!.contains('Singing')) {
      isSinging = true;
    }
    selectedHobbylist.clear();
    selectedSalary = userData[selectedIndex].salary!;
  }


  
}
