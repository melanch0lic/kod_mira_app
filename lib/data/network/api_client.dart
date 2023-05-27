import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kod_mira_app/data/network/models/product_model.dart';

final Provider apiClientProvider = Provider<ApiClient>((ref) => ApiClient());

class ApiClient {
  Future<List<ProductModel>> getProductsByCategory(int categoryType) async {
    await Future.delayed(const Duration(seconds: 2));
    final products = [
      List.generate(
        10,
        (index) => ProductModel(
            id: index,
            name: 'Product $index',
            description: 'Desc $index',
            price: 99,
            count: 1,
            discount: 10,
            adress: 'Пр. Мира',
            urlImage: 'https://i.pinimg.com/564x/0c/b9/41/0cb94134073a809a457b8421bec38c2b.jpg',
            category: 'Овощи'),
      ),
      List.generate(
        10,
        (index) => ProductModel(
            id: index,
            name: 'Product $index',
            description: 'Desc $index',
            price: 99,
            count: 1,
            discount: 10,
            adress: 'Пр. Мира',
            urlImage: 'https://i.pinimg.com/564x/0c/b9/41/0cb94134073a809a457b8421bec38c2b.jpg',
            category: 'Молочная продукция'),
      ),
      List.generate(
        10,
        (index) => ProductModel(
            id: index,
            name: 'Product $index',
            description: 'Desc $index',
            price: 99,
            count: 1,
            discount: 10,
            adress: 'Пр. Мира',
            urlImage: 'https://i.pinimg.com/564x/0c/b9/41/0cb94134073a809a457b8421bec38c2b.jpg',
            category: 'Мясо'),
      ),
      List.generate(
        10,
        (index) => ProductModel(
            id: index,
            name: 'Product $index',
            description: 'Desc $index',
            price: 99,
            count: 1,
            discount: 10,
            adress: 'Пр. Мира',
            urlImage: 'https://i.pinimg.com/564x/0c/b9/41/0cb94134073a809a457b8421bec38c2b.jpg',
            category: 'Крупы, злаки'),
      ),
      List.generate(
        10,
        (index) => ProductModel(
            id: index,
            name: 'Product $index',
            description: 'Desc $index',
            price: 99,
            count: 1,
            discount: 10,
            adress: 'Пр. Мира',
            urlImage: 'https://i.pinimg.com/564x/0c/b9/41/0cb94134073a809a457b8421bec38c2b.jpg',
            category: 'Рыба, морепродукты'),
      ),
      List.generate(
        10,
        (index) => ProductModel(
            id: index,
            name: 'Product $index',
            description: 'Desc $index',
            price: 99,
            count: 1,
            discount: 10,
            adress: 'Пр. Мира',
            urlImage: 'https://i.pinimg.com/564x/0c/b9/41/0cb94134073a809a457b8421bec38c2b.jpg',
            category: 'Чай, кофе'),
      ),
      List.generate(
        10,
        (index) => ProductModel(
            id: index,
            name: 'Product $index',
            description: 'Desc $index',
            price: 99,
            count: 1,
            discount: 10,
            adress: 'Пр. Мира',
            urlImage: 'https://i.pinimg.com/564x/0c/b9/41/0cb94134073a809a457b8421bec38c2b.jpg',
            category: 'Орехи'),
      ),
    ];
    return products[categoryType];
  }

  /* Future<List<FermModel>>  getFerms() async {
    await Future.delayed(const Duration(seconds: 2));
    final ferms = [
      List.generate(
        5,
        (index) => FermModel(
          id: index,
          name: 'Моя ферма',
          adress: 'Пр. мира, 1',
          ownerName: 'string',
          productCategories: [1, 2, 3],
          urlImage: 'string',
        ),
      ),
    ];
  }*/
}
