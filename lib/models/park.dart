class Park {
  final String title;
  final String image;
  final String distance;
  final String price;
  final ParkType? type;
  final String? typeText;
  final double? ratingStar;
  final double? ratingCount;

  Park({
    required this.title,
    required this.image,
    required this.distance,
    required this.price,
    this.type,
    this.typeText,
    this.ratingCount,
    this.ratingStar,
  });
}

enum ParkType {
  discount,
  popular,
}

var parks = [
  Park(
    title: 'Sain Park',
    image: 'assets/images/park_1.png',
    distance: '1.3km',
    price: '\$10/hr',
    type: ParkType.discount,
    typeText: 'OFF 23%',
  ),
  Park(
    title: 'Masa Mart',
    image: 'assets/images/park_2.png',
    distance: '23km',
    price: '\$23/hr',
    type: ParkType.popular,
    typeText: 'Popular',
  ),
  Park(
    title: 'Senayan Park',
    image: 'assets/images/park_3.png',
    distance: '12km',
    price: '\$12/hr',
    type: ParkType.discount,
    typeText: 'OFF 12%',
  ),
];

var freshLot = [
  Park(
    title: 'Senayan',
    image: 'assets/images/senayan.png',
    distance: '5.3km',
    price: '\$1/hr',
    ratingStar: 4,
    ratingCount: 14593,
  ),
  Park(
    title: 'Jakarta Kota',
    image: 'assets/images/kota_baru.png',
    distance: '12.2km',
    price: '\$10/hr',
    ratingStar: 5,
    ratingCount: 12222,
  ),
  Park(
    title: 'Senayan',
    image: 'assets/images/senayan2.png',
    distance: '1.1km',
    price: '\$1/hr',
    ratingStar: 4,
    ratingCount: 33333,
  ),
  Park(
    title: 'Kota Baru',
    image: 'assets/images/kota_baru.png',
    distance: '2km',
    price: '\$5/hr',
    ratingStar: 4.5,
    ratingCount: 2324212,
  ),
  Park(
    title: 'Senayan',
    image: 'assets/images/senayan.png',
    distance: '5.3km',
    price: '\$12/hr',
    ratingStar: 4.3,
    ratingCount: 14593,
  ),
];
