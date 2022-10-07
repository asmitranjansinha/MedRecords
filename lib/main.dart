import 'package:flutter/material.dart';
import 'package:medrecords/authentication/welcome_page.dart';
import 'package:medrecords/config/theme.dart';
import 'package:medrecords/view/allergies.dart';
import 'package:medrecords/view/homepage.dart';
import 'package:medrecords/view/main_activity.dart';
import 'package:medrecords/view/medical_history.dart';
import 'package:medrecords/view/medical_visit.dart';
import 'package:medrecords/view/vaccinations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: WelcomePage.route,
      routes: {
        Homepage.route: (context) => const Homepage(),
        WelcomePage.route: ((context) => const WelcomePage()),
        MedicalHistoryPage.route: (context) => const MedicalHistoryPage(),
        MedicalVisitPage.route: ((context) => const MedicalVisitPage()),
        AllergiesPage.route: (context) => const AllergiesPage(),
        VaccinationPage.route: ((context) => const VaccinationPage())
      },
    );
  }
}
