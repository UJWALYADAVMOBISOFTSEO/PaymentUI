class profileModal {
  String id;
  String url;
  String name;
  String email;

  profileModal({
    required this.id,
    required this.url,
    required this.name,
    required this.email,
  });
}

List<profileModal> profileScreenModal = <profileModal>[
  profileModal(
      id: "1",
      url: 'assets/images/Akshay.png',
      name: 'Akshay Kumar',
      email: 'akshaykumar@gmail.com'),
  profileModal(
      id: "2",
      url: 'assets/images/Aishwarya.png',
      name: 'Aishwarya Rai',
      email: 'aishwaryarai@gmail.com'),
  profileModal(
      id: "3",
      url: 'assets/images/Salman.png',
      name: 'Salman Khan',
      email: 'salmankhan@gmail.com'),
  profileModal(
      id: "4",
      url: 'assets/images/Sharukh.png',
      name: 'Sharukh Khan',
      email: 'sharukhkhan@gmail.com'),
  profileModal(
      id: "5",
      url: 'assets/images/Deepika.png',
      name: 'Deepika Padukoun',
      email: 'deepikapadukoun@gmail.com'),
  profileModal(
      id: "6",
      url: 'assets/images/Katrina.png',
      name: 'Katrina Kaif',
      email: 'katrinakaif@gmail.com'),
  profileModal(
      id: "7",
      url: 'assets/images/Hritik.png',
      name: 'Hritik Roshan',
      email: 'hritikroshan@gmail.com'),
  profileModal(
      id: "8",
      url: 'assets/images/Kartik.png',
      name: 'Kartik Aaryan',
      email: 'kartikaaryan@gmail.com'),
];
