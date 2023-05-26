import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileSettingsPage extends StatelessWidget {
  const ProfileSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          // highlightColor: theme.cardColor,
          splashRadius: 15,
          icon: SvgPicture.asset('assets/images/back_arrow_icon.svg', color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: const Text('Мои данные'),
      ),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  children: [CircleAvatar(radius: 40), SizedBox(width: 10), Text('User')],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                color: Colors.black,
                child: const Column(
                  children: [
                    ListTile(
                      tileColor: Colors.black,
                      title: Text('Редактировать имя', style: TextStyle(color: Colors.white)),
                      trailing: Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                    Divider(color: Colors.grey, height: 1),
                    ListTile(
                      tileColor: Colors.black,
                      title: Text('Стать фермером', style: TextStyle(color: Colors.white)),
                      trailing: Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                    Divider(color: Colors.grey, height: 1),
                    ListTile(
                      tileColor: Colors.black,
                      title: Text('Стать фермером', style: TextStyle(color: Colors.white)),
                      trailing: Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                    Divider(color: Colors.grey, height: 1),
                    ListTile(
                      tileColor: Colors.black,
                      title: Text('Удалить аккаунт', style: TextStyle(color: Colors.red)),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
