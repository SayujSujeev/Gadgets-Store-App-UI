

import 'package:gadgets_store_app/models/best_selling_product_model.dart';
import 'package:gadgets_store_app/models/popular_product_model.dart';

final _headphones = PopularProductModel(
  imageUrl: 'assets/images/headphones.png',
  price: 250,
  oldPrice: 500,
  discount: 50,
);

final _earphones = PopularProductModel(
  imageUrl: 'assets/images/earphones.png',
  price: 125,
  oldPrice: 250,
  discount: 50,
);

final _watch = PopularProductModel(
  imageUrl: 'assets/images/watch.png',
  price: 200,
  oldPrice: 400,
  discount: 50,
);

final List<PopularProductModel> popularProductsList = [
  _headphones,
  _earphones,
  _watch,

];

final _eruptM9 = BestSellingProductModel(
  imageUrl: 'assets/images/head1.jpeg',
  price: 399,
  description: '3D Sound 2.5Hz',
  name: 'Erupt M9',
  rating: 5,
  listImagesUrl: ['assets/images/head2.jpeg','assets/images/head3.jpeg','assets/images/head1.jpeg'],
  battery: 24,
  input: 30,
  bluetooth: 3.9,
  sound: 3,
  maxDescription: 'M9 Technical features including a masterclass.'
);

final List<BestSellingProductModel> bestSellingProductsList = [
  _eruptM9,
  _eruptM9,
];