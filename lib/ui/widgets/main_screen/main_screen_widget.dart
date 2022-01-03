import 'package:flutter/material.dart';
import 'package:olucha_kids/ui/widgets/catalog_category/catalog_list.dart';

import 'package:olucha_kids/ui/widgets/promotion_list/promotion_list.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SvgPicture promotionIcon = SvgPicture.asset(
      "images/icon/menu/promotion.svg",
    );
    SvgPicture promotionIconActive = SvgPicture.asset(
      "images/icon/menu/promotion.svg",
      color: Colors.grey,
    );

    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text('',
      //       style: GoogleFonts.montserrat(
      //           fontSize: 20,
      //           fontWeight: FontWeight.w600,
      //           color: AppColors.dark)),
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: const Icon(Icons.search, color: AppColors.dark),
      //     )
      //   ],
      // ),
      body: IndexedStack(
        index: _selectedTab,
        children: const [
          PromotionListWidget(),
          CatalogListWidget(),
          Text("Главная"),
          Text("Покупки"),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: promotionIconActive,
              label: "Акции",
              activeIcon: promotionIcon),
          const BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline_sharp),
            label: "Каталог",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Главная',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: 'Покупки',
          ),
        ],
        onTap: onSelectTab,
      ),
    );
  }
}
