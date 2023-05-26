import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kod_mira_app/navigation/router.gr.dart';

import 'components/profile_list_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(254, 248, 230, 1),
      appBar: AppBar(
        leading: InkWell(onTap: () {}, child: const Icon(Icons.notifications_none)),
        centerTitle: true,
        title: const Text('Привет, User!'),
        actions: [
          InkWell(
              onTap: () {
                context.router.push(const ProfileSettingsRoute());
              },
              child: const CircleAvatar()),
          const SizedBox(width: 10)
        ],
      ),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(132, 177, 0, 1), borderRadius: BorderRadius.all(Radius.circular(15))),
                    width: double.infinity,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text('Доставки',
                              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700)),
                          Spacer(),
                          Icon(Icons.bus_alert, color: Colors.white)
                        ]),
                        SizedBox(height: 5),
                        Text('Ближайшая: не ожидается', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const ProfileListTile(name: 'Лист ожидания', icon: Icons.list_outlined),
                const SizedBox(height: 5),
                const ProfileListTile(name: 'Избранное', icon: Icons.favorite),
                const SizedBox(height: 5),
                const ProfileListTile(name: 'Покупки', icon: Icons.favorite),
                const SizedBox(height: 30),
                const ProfileListTile(name: 'Информация', icon: Icons.info),
                const SizedBox(height: 5),
                const ProfileListTile(name: 'чета', icon: Icons.favorite),
              ],
            ),
          )),
    );
  }
}
