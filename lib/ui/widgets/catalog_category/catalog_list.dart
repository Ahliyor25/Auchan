import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olucha_kids/ui/themes/app_colors.dart';
import 'package:olucha_kids/ui/themes/font_style.dart';

import 'category_list.dart';

class CatalogListWidget extends StatelessWidget {
  const CatalogListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(0.15),
        title: Text('Каталог',
            style: GoogleFonts.montserrat(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.dark)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: AppColors.dark),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        
        children: const [
          CatalogMenuWidget(),
          SizedBox(
            height: 20,
          ),
          ProductListItem(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TitleCatagory(),
          ),
          CategoryListWidget(),
        ],
      ),
    );
  }
}

class CatalogMenuWidget extends StatelessWidget {
  const CatalogMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(

          // crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Товары дня", style: FontStyles.title),
            const Expanded(child: SizedBox(width: 10)),
            TextButton(
                onPressed: () {},
                child: Text("Все",
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.blue))),
          ]),
    );
  }
}

class ProductListItem extends StatelessWidget {
  const ProductListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 180,
      child: ListView.builder(
          itemCount: 10,
          itemExtent: 185,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black.withOpacity(0.1)),
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 13, vertical: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            DecoratedBox(
                                decoration: BoxDecoration(
                                  color: AppColors.yellow.withOpacity(0.1),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(56)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 8,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 4),
                                  child: Text("-20%",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.yellow)),
                                )),
                            const SizedBox(width: 10),
                            DecoratedBox(
                                decoration: BoxDecoration(
                                  color: AppColors.green.withOpacity(0.3),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(56)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 8,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 4),
                                  child: Text("Товар дня",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.green)),
                                )),
                            const Expanded(
                                child: SizedBox(
                              width: 10,
                            )),

                            // ElevatedButton(
                            //   style: AppButtonStyle.percent,
                            //   onPressed: () {},
                            //   child: Text("-20%",
                            //       style: GoogleFonts.montserrat(
                            //           fontSize: 8,
                            //           fontWeight: FontWeight.w500,
                            //           color: AppColors.white)),
                            // ),
                            // const SizedBox(width: 4),
                            // ElevatedButton(
                            //     style: AppButtonStyle.productDay,
                            //     onPressed: () {},
                            //     child: Text("Товар дня",
                            //         style: GoogleFonts.montserrat(
                            //             fontSize: 8,
                            //             fontWeight: FontWeight.w500,
                            //             color: AppColors.white))),
                            // const Expanded(child: SizedBox()),

                            const Icon(Icons.favorite_outline),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Center(
                          child: Image(
                            image: AssetImage("images/02.png"),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Умная лампа TP-Link Tapo L530E E27 8.7Вт 806lm Wi-Fi",
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            )),
                        const SizedBox(
                          height: 4,
                        ),
                        Text("10сом",
                            style: GoogleFonts.montserrat(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: AppColors.grey,
                                decoration: TextDecoration.lineThrough)),
                        const SizedBox(height: 4),
                        Text("9.6 сом / шт",
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.red,
                            )),
                      ],
                    ),
                  )),
            );
          }),
    );
  }
}

class TitleCatagory extends StatelessWidget {
  const TitleCatagory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Title(
        color: AppColors.dark,
        child: Text("Категории", style: FontStyles.title));
  }
}
