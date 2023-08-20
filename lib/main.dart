import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:forever_republic/supabase/supabase_config.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/CustomOverrides.dart';
import 'components/CustomProject.dart';
import 'local_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set The navigator and title bar color
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //     systemNavigationBarColor: Colors.black, statusBarColor: Colors.black));

  // Lock to only portrait
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Supabase
  // await SupabaseConfig.initialize;

  // Local Database
  var localDatabase = LocalDatabase();

  //Initialize all Local Databases
  await localDatabase.startHive();
  await localDatabase.initializeAll();

  //Perform First Time Local Database Write
  localDatabase.firstTimeDefaultWrite();


  runApp(MaterialApp(
    builder: setMaxTextScaleFactor(maxFactor: 1.5),
    scrollBehavior: CustomScrollBehaviour(),
    theme: ThemeData(
        fontFamily: GoogleFonts.robotoMono().fontFamily,
        primarySwatch: getMainBlueSwatch),
    debugShowCheckedModeBanner: false,
    initialRoute: "",
    routes: {

    },
  ));
}

const getMainBlueSwatch = MaterialColor(getMainBlueColor, {
  50: Color(getMainBlueColor),
  100: Color(getMainBlueColor),
  200: Color(getMainBlueColor),
  300: Color(getMainBlueColor),
  400: Color(getMainBlueColor),
  500: Color(getMainBlueColor),
  600: Color(getMainBlueColor),
  700: Color(getMainBlueColor),
  800: Color(getMainBlueColor),
  900: Color(getMainBlueColor),
});

const int getMainBlueColor = 0xff151A9A;
const int getButtonDisableBlueColor = 0xff52536E;
const int getLightGreyColor = 0xffD9D9D9;
const int getDarkGreyColor = 0xff696767;
const int getGreyTextColor = 0xff323030;
const int getLighterGreyTextColor = 0xff878787;
