class ProList {

  String? title;
  String? subtitle;
  String? img;

  ProList({
    this.title,
    this.subtitle,
    this.img,
  });

}

ProList proList = ProList();


List <ProList>data = <ProList>[
  ProList(title: 'Vagabond sack', subtitle: '\$120', img: 'assets/images/bag.png'),
  ProList(title: 'Stella sunglasses', subtitle: '\$58', img: 'assets/images/sunglass.jpg'),
  ProList(title: 'Whitney belt', subtitle: '\$35', img: 'assets/images/belt.jpg'),
  ProList(title: 'Garden strand', subtitle: '\$98', img: 'assets/images/g_s.jpg'),
  ProList(title: 'Strut earrings', subtitle: '\$34', img: 'assets/images/s_e.jpeg'),
  ProList(title: 'Varsity socks', subtitle: '\$12', img: 'assets/images/socks.jpg'),
  ProList(title: 'Weavw keyring', subtitle: '\$16', img: 'assets/images/W_K.jpg'),
  ProList(title: 'Strut earrings', subtitle: '\$34', img: 'assets/images/s_e.jpeg'),
  ProList(title: 'Garden strand', subtitle: '\$98', img: 'assets/images/g_s.jpg'),
  ProList(title: 'Vagabond sack', subtitle: '\$120', img: 'assets/images/bag.png'),
];