import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  static const String _themeBoxName = 'theme_box';
  static const String _themeKey = 'theme_mode';

  ThemeCubit() : super(ThemeMode.system) {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    final box = await Hive.openBox(_themeBoxName);
    final savedTheme = box.get(_themeKey, defaultValue: ThemeMode.system.name);
    emit(ThemeMode.values.firstWhere((e) => e.name == savedTheme));
  }

  Future<void> setTheme(ThemeMode themeMode) async {
    final box = await Hive.openBox(_themeBoxName);
    await box.put(_themeKey, themeMode.name);
    emit(themeMode);
  }

  bool get isDarkMode => state == ThemeMode.dark;
  bool get isLightMode => state == ThemeMode.light;
  bool get isSystemMode => state == ThemeMode.system;
}
