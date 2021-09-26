import 'package:flutter/material.dart';

// LOGIN
import 'package:punchhr/Login/login_page.dart';

// LANDING
import 'package:punchhr/Landing/landing_page.dart';

// MISC
import 'package:punchhr/Misc/not_found_page.dart';

MaterialPageRoute onGenerateRoute(RouteSettings settings) {
  if (settings.name == null) {
    return MaterialPageRoute(
      builder: (BuildContext context) {
        return const NotFoundPage();
      },
    );
  }
  String routeName = settings.name!;
  // TODO: Match Route based on regular expressions with optional / suffix
  if (routeName == "/login") {
    return MaterialPageRoute(builder: (BuildContext context) {
      return const LoginPage();
    });
  } else if (routeName == "/landing") {
    return MaterialPageRoute(builder: (BuildContext context) {
      return LandingPage();
    });
  }

  // TODO: Remove redundancy -> l.13
  return MaterialPageRoute(
    builder: (BuildContext context) {
      return const NotFoundPage();
    },
  );
}
