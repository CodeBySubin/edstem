
import 'package:edstem/app.dart';
import 'package:edstem/config/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await configureDependencies(); 
  runApp(const MyApp());
}
