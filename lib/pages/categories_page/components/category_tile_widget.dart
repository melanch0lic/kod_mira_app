import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryTileWidget extends StatelessWidget {
  const CategoryTileWidget({super.key, required this.name, required this.press, required this.image});
  final String name;
  final VoidCallback press;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: ListTile(
        onTap: press,
        title: Text(name, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
        trailing: SvgPicture.asset('assets/images/arrow_forward.svg', color: Colors.white),
      ),
    );
  }
}
