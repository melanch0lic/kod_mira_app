class Review {
  final String name;
  final String date;
  final double rating;
  final String description;
  final String avatarUrl;

  Review(
      {required this.name,
      required this.date,
      required this.rating,
      required this.description,
      required this.avatarUrl});
}

List<Review> reviewList = [
  Review(
      name: 'Олег',
      date: '11 мая',
      rating: 5.0,
      description:
          'Благодарим госхоз Герменчукский за годы тесного сотрудничества, за которые данный производитель зарекомендовал себя как добросовестного поставщика...',
      avatarUrl: 'https://i.pinimg.com/564x/b4/3a/89/b43a892e3f68c50a5b7ce996aa41a1af.jpg')
];
