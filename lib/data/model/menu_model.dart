class MenuModel {
  String? icon;
  String? description;
  MenuModel(this.icon, this.description);
}

var dataMenu = data
    .map(
      (e) => MenuModel(
        e['icon'],
        e['description'],
      ),
    )
    .toList();

var data = [
  {
    'icon': 'assets/svg/phone.svg',
    'description': 'Pulsa',
  },
  {
    'icon': 'assets/svg/akar-phone.svg',
    'description': 'Telpon dan Air',
  },
  {
    'icon': 'assets/svg/flash.svg',
    'description': 'Listrik',
  },
  {
    'icon': 'assets/svg/game.svg',
    'description': 'Game',
  },
  {
    'icon': 'assets/svg/donasi.svg',
    'description': 'Donasi',
  },
  {
    'icon': 'assets/svg/umbrella.svg',
    'description': 'Asuransi',
  },
  {
    'icon': 'assets/svg/shield.svg',
    'description': 'Investasi',
  },
  {
    'icon': 'assets/svg/healthy.svg',
    'description': 'BPJS',
  },
  {
    'icon': 'assets/svg/parent.svg',
    'description': 'Kontrol Orang Tua',
  },
  {
    'icon': 'assets/svg/lainya.svg',
    'description': 'Lainnya',
  },
];
