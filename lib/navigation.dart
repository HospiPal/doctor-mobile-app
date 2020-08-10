import 'package:doctorapp/central_screen/care_team/profile.dart';
import 'package:doctorapp/central_screen/records/ui/allergies/allergies.dart';
import 'package:doctorapp/central_screen/records/ui/conditions/conditions.dart';
import 'package:doctorapp/central_screen/records/ui/immunizations/immunizations.dart';
import 'package:doctorapp/central_screen/records/ui/lab_results/lab_results.dart';
import 'package:doctorapp/central_screen/records/ui/medications/medications.dart';
import 'package:doctorapp/central_screen/records/ui/procedures/procedures.dart';
import 'package:doctorapp/patients/ui/patients.dart';
import 'package:flutter/material.dart';

import 'auth/ui/auth.dart';
import 'auth/ui/login.dart';
import 'auth/ui/sign_up.dart';
import 'central_screen/care_team/message.dart';
import 'central_screen/journal/journal_tile.dart';
import 'central_screen/journal/log_entry_add.dart';
import 'central_screen/journal/log_entry_note.dart';
import 'central_screen/journal/log_entry_view.dart';
import 'central_screen/ui/central_screen.dart';

class Routes {
  static const patients = 'patients';
  static const centralScreen = 'central_screen';
  static const auth = 'auth';
  static const signUp = 'auth/sign_up';
  static const login = 'auth/login';
  static const logEntryAdd = 'central_screen/health/log_entry_add';
  static const logEntryNote = 'central_screen/health/log_entry_note';
  static const logEntryView = 'central_screen/health/log_entry_view';
  static const labResults = 'central_screen/records/lab_results';
  static const conditions = 'central_screen/records/conditions';
  static const allergies = 'central_screen/records/allergies';
  static const immunizations = 'central_screen/records/immunizations';
  static const medications = 'central_screen/records/medications';
  static const procedures = 'central_screen/records/procedures';
  static const message = 'care_team/message';
  static const profile = 'care_team/profile';
}

Route<dynamic> generateRoute(RouteSettings settings) {
  if (settings.name == Routes.logEntryNote) {
    final EntryArg args = settings.arguments;

    return MaterialPageRoute(
      builder: (context) {
        return LogEntryNote(entry: args.entry);
      },
    );
  } else if (settings.name == Routes.logEntryView) {
    final EntryArg args = settings.arguments;

    return MaterialPageRoute(
      builder: (context) {
        return LogEntryView(entry: args.entry);
      },
    );
  }

  assert(settings.arguments == null);
  switch (settings.name) {
    case Routes.patients:
      return MaterialPageRoute(builder: (context) => Patients());
    case Routes.centralScreen:
      return MaterialPageRoute(builder: (context) => CentralScreen());
    case Routes.auth:
      return MaterialPageRoute(builder: (context) => Auth());
    case Routes.signUp:
      return MaterialPageRoute(builder: (context) => SignUp());
    case Routes.login:
      return MaterialPageRoute(builder: (context) => Login());
    case Routes.logEntryAdd:
      return MaterialPageRoute(builder: (context) => LogEntryAdd());
    case Routes.procedures:
      return MaterialPageRoute(builder: (context) => Procedures());
    case Routes.medications:
      return MaterialPageRoute(builder: (context) => Medications());
    case Routes.immunizations:
      return MaterialPageRoute(builder: (context) => Immunizations());
    case Routes.allergies:
      return MaterialPageRoute(builder: (context) => Allergies());
    case Routes.conditions:
      return MaterialPageRoute(builder: (context) => Conditions());
    case Routes.labResults:
      return MaterialPageRoute(builder: (context) => LabResults());
    case Routes.message:
      return MaterialPageRoute(builder: (context) => Message());
    case Routes.profile:
      return MaterialPageRoute(builder: (context) => Profile());
    default:
      return MaterialPageRoute(
          builder: (context) => UndefinedRoute(settings.name));
  }
}

class UndefinedRoute extends StatelessWidget {
  final String undefinedRoute;

  UndefinedRoute(this.undefinedRoute);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
              'Undefined route: ($undefinedRoute). \nThis is a dart:core/errors Error.')),
      backgroundColor: Colors.red,
    );
  }
}
