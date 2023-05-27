import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kod_mira_app/navigation/router.gr.dart';
import 'package:kod_mira_app/providers/category_catalog_type_provider.dart';
import 'package:kod_mira_app/providers/requests_provider.dart';

class CatalogCategoryList extends ConsumerWidget {
  const CatalogCategoryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return SizedBox(
      // padding: const EdgeInsets.symmetric(vertical: 8),
      height: 200,
      child: Column(children: [
        Expanded(
          child: ListView(
            // padding: const EdgeInsets.symmetric(horizontal: 8),
            scrollDirection: Axis.horizontal,
            children: [
              GestureDetector(
                onTap: () {
                  ref.watch(categoryCatalogTypeProvider.notifier).state = 0;
                  ref.invalidate(getProductByCategoryProvider);
                },
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image:
                              NetworkImage('https://i.pinimg.com/564x/f9/ce/6b/f9ce6b6ce9140da9179756227f615535.jpg'),
                          fit: BoxFit.cover)),
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    //padding: const EdgeInsets.all(8),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius:
                            const BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))),
                    child: Text(
                      'Овощи и фрукты',
                      style: theme.textTheme.displayMedium!
                          .copyWith(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              InkWell(
                onTap: () {
                  ref.watch(categoryCatalogTypeProvider.notifier).state = 1;
                  ref.invalidate(getProductByCategoryProvider);
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image:
                              NetworkImage('https://i.pinimg.com/564x/60/3e/01/603e0171525ad6a3cfec124cac0f85dd.jpg'),
                          fit: BoxFit.cover)),
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    // padding: const EdgeInsets.all(8),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius:
                            const BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))),
                    child: Text(
                      'Молочная\n продукция',
                      style: theme.textTheme.displayMedium!
                          .copyWith(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              GestureDetector(
                onTap: () {
                  ref.watch(categoryCatalogTypeProvider.notifier).state = 2;
                  ref.invalidate(getProductByCategoryProvider);
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image:
                              NetworkImage('https://i.pinimg.com/564x/99/dc/34/99dc34dc6cb1f4bd9d97a8972f695711.jpg'),
                          fit: BoxFit.cover)),
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    //  padding: const EdgeInsets.all(8),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius:
                            const BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))),
                    child: Text(
                      'Мясо\n и птица',
                      style: theme.textTheme.displayMedium!
                          .copyWith(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: ListView(
            // padding: const EdgeInsets.symmetric(horizontal: 8),
            scrollDirection: Axis.horizontal,
            children: [
              GestureDetector(
                onTap: () {
                  ref.watch(categoryCatalogTypeProvider.notifier).state = 3;
                  ref.invalidate(getProductByCategoryProvider);
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image:
                              NetworkImage('https://i.pinimg.com/564x/45/b8/ae/45b8ae159a4d8e527e98e32bc90ba14c.jpg'),
                          fit: BoxFit.cover)),
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    //padding: const EdgeInsets.all(8),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius:
                            const BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))),
                    child: Text(
                      'Крупы, злаки',
                      style: theme.textTheme.displayMedium!
                          .copyWith(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () {
                  ref.watch(categoryCatalogTypeProvider.notifier).state = 4;
                  ref.invalidate(getProductByCategoryProvider);
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image:
                              NetworkImage('https://i.pinimg.com/564x/9b/70/45/9b7045a5cf8d38dcca1d7e0a3263c1f4.jpg'),
                          fit: BoxFit.cover)),
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    // padding: const EdgeInsets.all(8),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius:
                            const BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))),
                    child: Text(
                      'Рыба, морепродукты',
                      style: theme.textTheme.displayMedium!
                          .copyWith(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () => context.router.push(const CategoriesRoute()),
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image:
                              NetworkImage('https://i.pinimg.com/564x/f0/fe/29/f0fe29e8e3de48a01a22b66a233dca09.jpg'),
                          fit: BoxFit.cover)),
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    // padding: const EdgeInsets.all(8),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius:
                            const BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))),
                    child: Text(
                      'Все категории',
                      style: theme.textTheme.displayMedium!
                          .copyWith(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
