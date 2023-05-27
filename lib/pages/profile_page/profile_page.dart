import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/log_out_button.dart';
import 'components/profile_list_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(254, 248, 230, 1),
      appBar: AppBar(
        title: const Text('Профиль', style: TextStyle(color: Colors.black)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
                onTap: () {
                  //context.router.push(const ProfileSettingsRoute());
                },
                child: SvgPicture.asset('assets/images/settings.svg')),
          ),
        ],
      ),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, bottom: 20, right: 20),
                  decoration:
                      const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(15))),
                  width: double.infinity,
                  height: 140,
                  child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    const CircleAvatar(radius: 50),
                    const SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Имя пользователя',
                            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                                color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 20, fontWeight: FontWeight.w500)),
                        const SizedBox(height: 5),
                        Text('email@mail.ru',
                            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                                color: const Color.fromRGBO(44, 44, 46, 1), fontSize: 16, fontWeight: FontWeight.w400)),
                      ],
                    )
                  ]),
                ),
                const SizedBox(height: 30),
                const ProfileListTile(name: 'Мои товары', icon: 'assets/images/cart.svg'),
                const SizedBox(height: 15),
                const ProfileListTile(name: 'Мои тендеры', icon: 'assets/images/tender.svg'),
                const SizedBox(height: 15),
                const ProfileListTile(name: 'История покупок', icon: 'assets/images/cart.svg'),
                const SizedBox(height: 15),
                const ProfileListTile(name: 'Избранное', icon: 'assets/images/favour.svg'),
                const SizedBox(height: 30),
                const LogOutButton(),
              ],
            ),
          )),
    );
  }
}
