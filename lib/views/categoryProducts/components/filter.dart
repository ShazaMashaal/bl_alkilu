import 'package:flutter/material.dart';

import 'filter_bottom_modal.dart';

class Filter {
  static const options = [
    "Default",
    "Popularity",
    "Customer Review",
    "Price High To Low",
    "Price Low To High"
  ];
  static void showFilterOptions(BuildContext context) {
    showModalBottomSheet<void>(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      ),
      context: context,
      builder: (BuildContext context) {
        return  const FilterBottomModal();
      },
    );
  }
}