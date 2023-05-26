import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterHeader extends StatelessWidget {
  const FilterHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AnimatedCrossFade(
            firstChild: InkWell(
              onTap: () {},
              child: Row(children: [
                SvgPicture.asset('assets/images/sort_up_icon.svg', color: Colors.black),
                const SizedBox(width: 5),
                const Text('По стоимости', style: TextStyle(color: Colors.black, fontSize: 16))
              ]),
            ),
            secondChild: Row(children: [
              SvgPicture.asset('assets/images/sort_down_icon.svg', color: Colors.black),
              const SizedBox(width: 5),
              const Text('По удаленности', style: TextStyle(color: Colors.black, fontSize: 16))
            ]),
            crossFadeState: CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 400)),
        const Spacer(),
        Row(
          children: [
            const Text('Фильтры', style: TextStyle(color: Colors.black, fontSize: 16)),
            const SizedBox(width: 6),
            SvgPicture.asset('assets/images/filter_icon.svg', color: Colors.black, width: 16, height: 16)
          ],
        )
      ],
    );
  }
}
