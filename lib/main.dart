import 'package:familydriver/provider/LocationProvider.dart';
import 'package:familydriver/provider/map_provider.dart';
import 'package:familydriver/screens/Customer/Drivers.dart';
import 'package:familydriver/screens/Customer/RideConfirmPage_a.dart';
import 'package:familydriver/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(
      // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => LocationProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => Mapprovider(),
          )
        ],
        child: MaterialApp(
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        ),
      ),
    );
