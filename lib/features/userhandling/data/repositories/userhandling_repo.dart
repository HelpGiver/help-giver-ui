
import 'package:meta/meta.dart';
import 'package:help_giver/features/userhandling/domain/entities/user.dart';

class UserRepository {
  String username1;

  Future<String> authenticate({
    @required User user,
  }) async {
    await Future.delayed(Duration(seconds: 1));
    if (user.userName != "richard" && user.password != "1") {
      username1 = user.userName;
      throw 'Error login';
    } else {
      return 'token';
    }
  }

  Future<String> register({
    @required User user,
  }) async {
    await Future.delayed(Duration(seconds: 1));
    if (user.userName != "richard" && user.password != "1" 
      && user.mobileNumber != "007"  && user.address != "street" ) {
      print("Register error");
      throw 'Error register';
    } else {
      return 'token';
    }
  }

  Future<void> deleteToken() async {
    /// delete from keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  Future<void> persistToken(String token) async {
    /// write to keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return false;
  }

  Future<bool> hasToken() async {
    /// read from keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return false;
  }

}