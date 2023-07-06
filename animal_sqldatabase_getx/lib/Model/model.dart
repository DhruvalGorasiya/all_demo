
class AnimalCategoryModel {
  String categoryName;
  String image;
  String categoryLogo;

  AnimalCategoryModel(
      {required this.categoryName,
      required this.image,
      required this.categoryLogo});
}

List<AnimalCategoryModel> animalCategoryList = [
  AnimalCategoryModel(
      categoryName: 'Mammals\nAnimal',
      image:
      'https://images.unsplash.com/photo-1585468274952-66591eb14165?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332',
      categoryLogo: 'Assets/lion.png'),
  AnimalCategoryModel(
      categoryName: 'Birds\nAnimal',
      image: 'https://images.pexels.com/photos/97533/pexels-photo-97533.jpeg',
      categoryLogo: 'Assets/dove.png'),
  AnimalCategoryModel(
      categoryName: 'Fish\nAnimal',
      image:
      'https://images.unsplash.com/photo-1513039464749-94912b3841ce?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=815',
      categoryLogo: 'Assets/fish.png'),
  AnimalCategoryModel(
      categoryName: 'Reptiles\nAnimal',
      image:
      'https://images.unsplash.com/photo-1629264125132-408edab768ff?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171',
      categoryLogo: 'Assets/crocodile.png'),
  AnimalCategoryModel(
      categoryName: 'Amphibians\nAnimal',
      image:
      'https://images.unsplash.com/photo-1502780402662-acc01c084a25?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1204',
      categoryLogo: 'Assets/frog-head.png'),
];

