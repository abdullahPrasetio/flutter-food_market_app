part of 'services.dart';

class UserServices {
  static Future<ApiReturnValue<User>> signIn(
      String email, String password) async {
    await Future.delayed(Duration(milliseconds: 500));

    return ApiReturnValue(value: mockUser);
    // return ApiReturnValue(message: "Wrong email or password");
  }

  static Future<ApiReturnValue<User>> signUp(User user, String password,
      {File pictureFile, http.Client client}) async {
    if (client == null) {
      client = http.Client();
    }
    String url = baseURL + 'register';

    var response = await client.post(Uri.parse(url),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json"
        },
        body: jsonEncode(<String, String>{
          'name': user.name,
          'email': user.email,
          'password': password,
          'password_confirmation': password,
          'address': user.address,
          'city': user.city,
          'houseNumber': user.houseNumber,
          'phoneNumber': user.phoneNumber,
        }));

    // print(jsonDecode(response.body));
    if (response.statusCode != 200) {
      return ApiReturnValue(message: "Please try again");
    }
    var data = jsonDecode(response.body);

    User.token = data["data"]["access_token"];
    User value = User.fromJson(data['data']['user']);
    print(value);
    // Upload Photo
    if (pictureFile != null) {
      ApiReturnValue<String> result = await uploadProfilePicture(pictureFile);
      if (result.value != null) {
        value = value.copyWith(
            picturePath:
                "https://foodmarket-backend.buildwithangga.id/storage/" +
                    result.value);
      }
    }
    return ApiReturnValue(value: value);
  }

  static Future<ApiReturnValue<String>> uploadProfilePicture(File pictureFile,
      {http.MultipartRequest request}) async {
    String url = baseURL + 'user/photo';
    var uri = Uri.parse(url);

    if (request == null) {
      request = http.MultipartRequest("POST", uri)
        ..headers['Content-Type'] = 'appliction/json'
        ..headers['Authorization'] = "Bearer ${User.token}";
    }

    var multipartFile =
        await http.MultipartFile.fromPath('file', pictureFile.path);
    request.files.add(multipartFile);
    var response = await request.send();
    if (response.statusCode == 200) {
      String responseBody = await response.stream.bytesToString();
      var data = jsonDecode(responseBody);
      String imagePath = data['data'][0];

      return ApiReturnValue(value: imagePath);
    } else {
      return ApiReturnValue(message: "uploading profile value failed");
    }
  }
}
