import 'package:flutter/material.dart';

import 'components/story_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 40,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5), borderRadius: BorderRadius.circular(10)),
          child: const TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Поиск',
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.only(bottom: 13)),
          ),
        ),
        actions: const [
          Icon(Icons.tune),
          SizedBox(
            width: 16,
          ),
          Icon(Icons.shopping_cart),
          SizedBox(
            width: 4,
          ),
        ],
      ),
      body: Column(children: [
        const StorySlider(),
        Expanded(
            child: GridView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10),
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 3, crossAxisSpacing: 3),
          itemBuilder: ((context, index) => SizedBox(
                height: 200,
                child: Card(
                  child: Text('$index'),
                ),
              )),
        ))
      ]),
    );
  }
}
