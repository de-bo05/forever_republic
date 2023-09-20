import 'package:flutter/foundation.dart';
import 'package:hive_flutter/adapters.dart';
import '../components/CustomProject.dart';
import '../db_reference/Authentication.dart';
import '../local_database.dart';
import '../user_type.dart';

class AuthenticationOperation {
  Future<void> initialize() {
    return LocalDatabase()
        .interface()
        .openBox(dbReference(Authentication.database));
  }

  ValueListenable<Box> listenable() {
    return LocalDatabase()
        .getBox(dbReference(Authentication.database))
        .listenable();
  }

  Future<bool> saveAuthentication(
      UserType userType,
      String businessName,
      String phoneNumber,
      String emailAddress,
      String fullName,
      String id,
      String companyCode) async {
    Box authenticationBox =
        LocalDatabase().getBox(dbReference(Authentication.database));

    Future toLocalDb = authenticationBox.put(dbReference(UserType.key), {
      dbReference(Authentication.user_type): userType.toString(),
      dbReference(Authentication.id): id,
      dbReference(Authentication.company_code): companyCode,
      dbReference(Authentication.business_name): businessName,
      dbReference(Authentication.email_address): emailAddress,
      dbReference(Authentication.phone_number): phoneNumber,
      dbReference(Authentication.full_name): fullName,
    });

    Future saveToken = TokenOperation().saveFCMToken();

    final performActions = Future.wait([toLocalDb, saveToken]);

    return await performActions.then((value) {
      if (value[1] == true) {
        return true;
      } else {
        AuthenticationOperation().clearEntries();
        return false;
      }
    }).onError((error, stackTrace) {
      AuthenticationOperation().clearEntries();
      showDebug(msg: "$error $stackTrace");

      return false;
    });
  }

  String getCompanyName() {
    Box authenticationBox =
        LocalDatabase().getBox(dbReference(Authentication.database));
    dynamic companyName = authenticationBox.get(dbReference(UserType.key));
    return companyName != null
        ? companyName[dbReference(Authentication.business_name)]
        : "";
  }

  String authenticationIsValid() {
    Box authenticationBox =
        LocalDatabase().getBox(dbReference(Authentication.database));
    dynamic authenticationData =
        authenticationBox.get(dbReference(UserType.key));
    return authenticationData != null
        ? authenticationData[dbReference(Authentication.user_type)]
        : "";
  }

  Future<bool> logOut({bool forceClearToken = false}) {

    Future clearAuthentication = clearEntries();

    Future<List<dynamic>> clearAllEntriesFuture = Future.wait([
      clearAuthentication,
    ]);

    return clearAllEntriesFuture
        .then((value) => value.every((element) => true))
        .onError((error, stackTrace) => false);
  }

  Future clearEntries() {
    return LocalDatabase().getBox(dbReference(Authentication.database)).clear();
  }

  String getCompanyCode() {
    Box authenticationBox =
        LocalDatabase().getBox(dbReference(Authentication.database));
    dynamic companyCode = authenticationBox.get(dbReference(UserType.key));
    return companyCode != null
        ? companyCode[dbReference(Authentication.company_code)]
        : "";
  }

  String getId() {
    Box authenticationBox =
        LocalDatabase().getBox(dbReference(Authentication.database));
    dynamic id = authenticationBox.get(dbReference(UserType.key));
    return id != null ? id[dbReference(Authentication.id)] : "";
  }

  String getFullName() {
    Box authenticationBox =
        LocalDatabase().getBox(dbReference(Authentication.database));
    dynamic fullName = authenticationBox.get(dbReference(UserType.key));
    return fullName != null
        ? fullName[dbReference(Authentication.full_name)]
        : "";
  }

  String getEmail() {
    Box authenticationBox =
        LocalDatabase().getBox(dbReference(Authentication.database));
    dynamic emailAddress = authenticationBox.get(dbReference(UserType.key));
    return emailAddress != null
        ? emailAddress[dbReference(Authentication.email_address)]
        : "";
  }
}
