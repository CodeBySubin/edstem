import 'package:flutter/material.dart';
import 'package:edstem/core/constants/constants.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String) onChanged;

  const SearchField({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      showCursor: true,
      cursorColor: AppColors.white,
      textInputAction: TextInputAction.search,
      keyboardType: TextInputType.text,
      style: const TextStyle(color: AppColors.white),
      decoration: InputDecoration(
        hintText: AppStrings.searchForMovies,
        prefixIcon: const Icon(Icons.search, color: Colors.grey),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        fillColor: Colors.grey.shade800,
        filled: true,
        hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.textgrey,
            ),
      ),
      onChanged: onChanged,
    );
  }
}
