class homeModal {
  String id;
  String title;
  String subTitle;
  String description;
  String price;

  homeModal({required this.title,
    required this.subTitle,
    required this.description,
    required this.price, required this.id});
}

List<homeModal> homeScreenModal = <homeModal>[
  homeModal(
    id: "1",
    title: "Apple MacBook Pro 16' - Sliver",
    subTitle: 'Apple Store',
    description:
    'Return Time Remaining 2 Weeks 1342 Colorado, Suite 32 - 92003',
    price: '\$3,234.03',
  ),
  homeModal(
    id: "2",
    title: "Ueno Coffee Filter",
    subTitle: 'Target',
    description: 'Return Time Remaining 2 Weeks 12 Bandra, Mumbai - 100809',
    price: '\$2,104.03',
  ),
  homeModal(
    id: "3",
    title: "Calvin Klein Men’s 1/4 Zip Sweater",
    subTitle: 'Amazon',
    description: 'Return Time Remaining 1 Weeks 8 Bhiwandi, Mumbai - 421908',
    price: '\$1,001.00',
  ),
  homeModal(
    id: "4",
    title: "Women's Ethnic Wear",
    subTitle: 'Trends',
    description: 'Return Time Remaining 1 Weeks 8 Bhiwandi, Mumbai - 421908',
    price: '\$2,501.00',
  ),
  homeModal(
    id: "5",
    title: "Gental Men",
    subTitle: 'Louis Philippe',
    description: 'Return Time Remaining 1 Weeks 8 Ambernath, Mumbai - 421502',
    price: '\$1,001.00',
  ),
  homeModal(
    id: "6",
    title: "Cooles Finds",
    subTitle: 'Arrow',
    description: 'Return Time Remaining 2 Weeks 7 Dadar, Mumbai - 421901',
    price: '\$3,301.20',
  ),
];
