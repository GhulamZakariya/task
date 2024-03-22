import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20.0),
          _buildTab(Icons.home, 'Home', isSelected: true),
          _buildTab(Icons.search, 'Search'),
          _buildTab(null, null, isSelected: false, gradient: const LinearGradient(
            colors: [Colors.orange, Colors.yellow],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          _buildTab(Icons.notifications, 'Notifications'),
          _buildTab(Icons.settings, 'Settings'),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }

  Widget _buildTab(IconData? icon, String? text, {bool isSelected = false, LinearGradient? gradient}) {
    return ListTile(
      tileColor: isSelected ? null : Colors.transparent,
      title: Row(
        children: [
          if (icon != null) Icon(icon, color: isSelected ? null : Colors.grey),
          if (icon != null) const SizedBox(width: 10.0),
          if (text != null) Text(text, style: TextStyle(color: isSelected ? null : Colors.grey)),
        ],
      ),
      onTap: () {
        // Handle tab selection here
      },
    );
  }
}