import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({super.key, required this.name, required this.icon});
  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
      tileColor: Colors.white,
      leading: Icon(icon, color: const Color.fromRGBO(44, 44, 46, 1)),
      textColor: Colors.white,
      title: Text(name, style: const TextStyle(color: Color.fromRGBO(44, 44, 46, 1))),
    );
  }
}
