class ModelProducts {
  String name;
  String imageAsset;
  List imageList;
  String price;

  ModelProducts(
      {required this.name,
      required this.imageAsset,
      required this.price,
      required this.imageList});
}

List productsList = [
  ModelProducts(
      name: 'Kemeja Flannel Kotak Lengan Panjang',
      imageAsset: 'assets/png/men1.png',
      imageList: [
        'assets/png/men1.png',
        'assets/png/men1_2.png',
        'assets/png/men1_3.png',
      ],
      price: '399.000'),
  ModelProducts(
      name: 'Celana Jogger Ultra Stretch Aktif',
      imageAsset: 'assets/png/men3.png',
      imageList: [
        'assets/png/men3.png',
        'assets/png/men3_2.png',
        'assets/png/men3_3.png',
      ],
      price: '299.000'),
  ModelProducts(
      name: 'T-Shirt Soft Touch Kerah Turtle Lengan Panjang',
      imageAsset: 'assets/png/men2.png',
      imageList: [
        'assets/png/men2.png',
        'assets/png/men2_2.png',
        'assets/png/men2_3.png',
      ],
      price: '199.000'),
  ModelProducts(
      name: 'T-Shirt Oversize Katun Lengan Pendek',
      imageAsset: 'assets/png/women1.png',
      imageList: [
        'assets/png/women1.png',
        'assets/png/women1_2.png',
        'assets/png/women1_3.png',
      ],
      price: '199.000'),
  ModelProducts(
      name: 'KIDS T-Shirt DRY-EX Kerah Bulat (Mapping)',
      imageAsset: 'assets/png/kids1.png',
      imageList: [
        'assets/png/kids1.png',
        'assets/png/kids1_2.png',
        'assets/png/kids1_3.png',
      ],
      price: '149.000'),
  ModelProducts(
      name: 'Jaket Parka Ringan Washable Warm Padded',
      imageAsset: 'assets/png/baby1.png',
      imageList: [
        'assets/png/baby1.png',
        'assets/png/baby1_2.png',
        'assets/png/baby1_3.png',
      ],
      price: '499.000'),
  ModelProducts(
      name: 'T-Shirt Panjang DRY-EX Tanpa Lengan',
      imageAsset: 'assets/png/women2.png',
      imageList: [
        'assets/png/women2.png',
        'assets/png/women2_2.png',
        'assets/png/women2_3.png',
      ],
      price: '199.000'),
  ModelProducts(
      name: 'Kemeja Katun Modal Kerah Tegak Lengan Pendek',
      imageAsset: 'assets/png/men4.png',
      imageList: [
        'assets/png/men4.png',
        'assets/png/men4_2.png',
        'assets/png/men4_3.png',
      ],
      price: '299.000'),
  ModelProducts(
      name: 'Blazer Ultra Light',
      imageAsset: 'assets/png/men5.png',
      imageList: [
        'assets/png/men5.png',
        'assets/png/men5_2.png',
        'assets/png/men5_3.png',
      ],
      price: '899.000'),
  ModelProducts(
      name: 'Rompi Ultra Light Down Wide Quilt',
      imageAsset: 'assets/png/men6.png',
      imageList: [
        'assets/png/men6.png',
        'assets/png/men6_2.png',
        'assets/png/men6_3.png',
      ],
      price: '699.000'),
];
