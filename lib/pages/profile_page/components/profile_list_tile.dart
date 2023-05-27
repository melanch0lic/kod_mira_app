import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({super.key, required this.name, required this.icon});
  final String name;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
      tileColor: Colors.white,
      leading: SvgPicture.asset(icon, color: Colors.black),
      textColor: Colors.white,
      title: Text(name, style: const TextStyle(color: Color.fromRGBO(44, 44, 46, 1))),
    );
  }
}
