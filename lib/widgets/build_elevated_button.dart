import 'package:flutter/material.dart';

class BuildElevatedButton extends StatefulWidget {
  final BuildContext context;
  final String label;
  final VoidCallback onTap;
  const BuildElevatedButton({
    super.key,
    required this.context,
    required this.label,
    required this.onTap,
  });

  @override
  State<BuildElevatedButton> createState() => _BuildElevatedButtonState();
}

class _BuildElevatedButtonState extends State<BuildElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor, // Use theme color for the button
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: widget.onTap,
        borderRadius: BorderRadius.circular(10),
        splashColor: Colors.white.withOpacity(0.2), // Visual feedback on tap
        child: Container(
          height: 50,
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            widget.label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
