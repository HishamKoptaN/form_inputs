import 'dart:developer';
import 'package:injectable/injectable.dart';

@module
abstract class InjectionModule {
  InjectionModule() {
    log("InjectionModule has been initialized! 🚀");
  }
}
