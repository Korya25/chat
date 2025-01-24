import 'package:chat_ap_p/core/theme/cubit/theme_cubit.dart';
import 'package:chat_ap_p/core/theme/ui/theme_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCard extends StatelessWidget {
  const ThemeCard({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<ThemeCubit>();

    return GestureDetector(
      onTap: () {
        _showThemeBottomSheet(context, themeCubit);
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Theme'),
            Text(themeCubit.state.name),
          ],
        ),
      ),
    );
  }

  void _showThemeBottomSheet(BuildContext context, ThemeCubit themeCubit) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
      ),
      context: context,
      builder: (context) {
        return ThemeBottomSheet(themeCubit: themeCubit);
      },
    );
  }
}
