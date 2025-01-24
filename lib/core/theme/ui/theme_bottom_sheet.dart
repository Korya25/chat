import 'package:chat_ap_p/core/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';

class ThemeBottomSheet extends StatefulWidget {
  final ThemeCubit themeCubit;

  const ThemeBottomSheet({super.key, required this.themeCubit});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  late String selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.themeCubit.state.name;
  }

  void _showAlreadySelectedPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Notice'),
          content: const Text('This theme is already selected.'),
          icon: const Icon(Icons.info_outline), // إضافة أيقونة
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // إغلاق الـ Popup
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close),
              ),
              const Text('Theme'),
            ],
          ),
          RadioListTile<String>(
            title: const Text('Light'),
            value: ThemeMode.light.name,
            groupValue: selectedValue,
            onChanged: (value) {
              if (selectedValue == value) {
                _showAlreadySelectedPopup(
                    context); // عرض Popup إذا كان الخيار محددًا بالفعل
              } else {
                setState(() {
                  selectedValue = value!;
                });
                widget.themeCubit.setTheme(ThemeMode.light);
                Navigator.pop(context); // إغلاق الـ BottomSheet
              }
            },
          ),
          RadioListTile<String>(
            title: const Text('Dark'),
            value: ThemeMode.dark.name,
            groupValue: selectedValue,
            onChanged: (value) {
              if (selectedValue == value) {
                _showAlreadySelectedPopup(
                    context); // عرض Popup إذا كان الخيار محددًا بالفعل
              } else {
                setState(() {
                  selectedValue = value!;
                });
                widget.themeCubit.setTheme(ThemeMode.dark);
                Navigator.pop(context); // إغلاق الـ BottomSheet
              }
            },
          ),
          RadioListTile<String>(
            title: const Text('System'),
            value: ThemeMode.system.name,
            groupValue: selectedValue,
            onChanged: (value) {
              if (selectedValue == value) {
                _showAlreadySelectedPopup(
                    context); // عرض Popup إذا كان الخيار محددًا بالفعل
              } else {
                setState(() {
                  selectedValue = value!;
                });
                widget.themeCubit.setTheme(ThemeMode.system);
                Navigator.pop(context); // إغلاق الـ BottomSheet
              }
            },
          ),
        ],
      ),
    );
  }
}
